# Help Desk Memoria

Repositório privado para inventário técnico, histórico de chamados, runbooks e relatórios de atendimento.

## Regras essenciais

- Nunca registrar senhas, tokens, chaves de VPN, credenciais do AnyDesk ou dados pessoais desnecessários.
- Guardar segredos somente no cofre de senhas; no repositório, informar apenas o nome do item no cofre.
- Um chamado por arquivo e um commit por chamado.
- Antes de mudar um equipamento, confirmar a autorização registrada em `unidades/`.

## Ordem inicial

1. Preencha `RESPONSAVEIS.md`.
2. Copie `unidades/_modelo-unidade.md` para uma ficha por unidade.
3. Rode `scripts/coletar-inventario.ps1` em cada computador e complete os campos pendentes do arquivo gerado.
4. Registre cada atendimento em `chamados/2026/`.
5. Converta soluções repetíveis em arquivos de `runbooks/`.

## Convenção de nomes

- Unidade: letras minúsculas e hífen, por exemplo `alvorada.md`.
- Máquina: nome real do computador, por exemplo `ALVORADA-PC03.md`.
- Chamado: `AAAA-MM-DD-unidade-sintoma.md`.
