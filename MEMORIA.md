# Memória operacional inicial

## Propósito e escopo

Esta memória reúne conhecimento operacional reutilizável extraído de duas conversas de atendimento entre junho e outubro de 2026. Ela serve de ponto de partida para suporte humano e LLMs, mas não substitui inventário, autorização ou validação no equipamento.

## Como interpretar

- **Confirmado** significa que a conversa descreve a ocorrência ou ação.
- **Hipótese** exige verificação antes de qualquer alteração.
- **Pendente** é uma lacuna que deve ser preenchida em atendimento futuro.
- Nenhuma informação deve ser usada como credencial. Senhas, IDs de acesso remoto, telefones, chaves e endereços detalhados foram deliberadamente excluídos.

## Mapa de conhecimento

| Tema | Situação | Fonte estruturada |
|---|---|---|
| Unidades atendidas | Pelo menos Alvorada, Fusão, Getran, Aguiar e Sisters Play; a conversa menciona seis unidades no total | `unidades/` |
| Impressoras em rede | Incidentes recorrentes; há um caso técnico detalhado na Getran | `runbooks/triagem-impressora-rede.md` |
| Lentidão e travamentos | Ocorrência recorrente; causa não deve ser presumida | `runbooks/triagem-lentidao.md` |
| Compartilhamentos e acessos | Solicitações de criação e remoção de acesso precisam de aprovação e identificação do recurso correto | `runbooks/acesso-compartilhamentos.md` |
| Casos históricos | Dois casos com contexto suficiente para reutilização | `chamados/2026/` |

## Decisões operacionais extraídas

1. O repositório Git privado é a memória central e deve ficar nos PCs de atendimento, não copiado integralmente para todas as máquinas dos clientes.
2. O atendimento remoto exige autorização da unidade e registro do que foi alterado.
3. Formatação, troca de memória ou de disco só devem ocorrer após diagnóstico, backup e validação de compatibilidade.
4. Para softwares comerciais, usar instalação e licença legítimas; não registrar nem orientar uso de cópias não licenciadas.
5. Chamados de impressora devem começar por rede, IP, fila, serviço Spooler e porta configurada antes de reinstalação ou alteração de hardware.

## Limites conhecidos

- Não há inventário confiável de máquinas, rede, impressoras, VPN, servidores ou responsáveis por unidade.
- Em diversos chamados, o resultado final não foi registrado. Não inferir que foram resolvidos.
- Nomes de unidades e vínculos entre elas precisam ser confirmados antes de consolidar permissões.

Consulte `PENDENCIAS.md` antes de executar mudanças de infraestrutura.
