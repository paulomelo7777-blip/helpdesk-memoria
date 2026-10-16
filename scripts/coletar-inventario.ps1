param(
    [string]$Destino = (Join-Path $PSScriptRoot "..\maquinas\$env:COMPUTERNAME.md")
)

$ErrorActionPreference = 'Stop'

function ValorSeguro {
    param([scriptblock]$Acao, [string]$Padrao = 'Não disponível')
    try { & $Acao } catch { $Padrao }
}

$os = Get-CimInstance Win32_OperatingSystem
$pc = Get-CimInstance Win32_ComputerSystem
$cpu = Get-CimInstance Win32_Processor | Select-Object -First 1
$discos = Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3" |
    ForEach-Object { "$($_.DeviceID) $([math]::Round($_.Size / 1GB, 0)) GB; livre $([math]::Round($_.FreeSpace / 1GB, 0)) GB" }
$tpm = ValorSeguro { (Get-Tpm).TpmPresent }
$secureBoot = ValorSeguro { Confirm-SecureBootUEFI }
$firmware = ValorSeguro { (Get-ComputerInfo).BiosFirmwareType }
$ips = ValorSeguro { (Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.IPAddress -notlike '127.*' -and $_.PrefixOrigin -ne 'WellKnown' } | ForEach-Object { $_.IPAddress }) -join ', ' }
$printers = ValorSeguro { (Get-Printer | ForEach-Object { $_.Name }) -join '; ' }
$defender = ValorSeguro { (Get-MpComputerStatus).AntivirusEnabled }

$conteudo = @"
# $env:COMPUTERNAME

- Unidade: [preencher]
- Usuário principal: [preencher]
- Responsável local: [preencher]
- Data do inventário: $(Get-Date -Format 'yyyy-MM-dd')

## Sistema e compatibilidade

| Item | Valor |
|---|---|
| Windows e versão | $($os.Caption) $($os.Version) |
| TPM presente | $tpm |
| UEFI | $firmware |
| Inicialização segura | $secureBoot |
| Processador | $($cpu.Name) |
| Compatível com Windows 11 | [avaliar TPM, UEFI, Secure Boot, CPU, RAM e disco] |

## Hardware e rede

| Item | Valor |
|---|---|
| RAM | $([math]::Round($pc.TotalPhysicalMemory / 1GB, 0)) GB |
| Disco | $($discos -join '; ') |
| IP e rede | $ips |
| Impressoras | $printers |
| VPN | [preencher] |

## Segurança e atendimento

- Defender ativo: $defender
- AnyDesk com MFA e dispositivo autorizado: [verificar]
- Usuário é administrador local: [verificar]
- Claude Code autorizado/instalado: [não/autorizado/instalado]
- Plano para Windows 10, se aplicável: [atualizar/trocar/mitigar]
"@

$pasta = Split-Path -Parent $Destino
New-Item -ItemType Directory -Force -Path $pasta | Out-Null
Set-Content -Path $Destino -Value $conteudo -Encoding utf8
Write-Host "Inventário salvo em: $Destino"
