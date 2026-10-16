# [2026-09-02] [Fusão] Revogação de acesso a recursos administrativos

- Máquina: computador de vendas, não identificado
- Usuário: não registrado
- Autorização: solicitação atribuída à responsável da unidade; confirmar em novo atendimento
- Relato: remover acesso a recursos administrativos e avaliar lentidão do computador.

## Evidências confirmadas

- A solicitação misturava referências a Drive e a servidor.
- Houve dificuldade em identificar a conta e o recurso corretos.
- Foi informado posteriormente que acessos a pastas foram removidos, mas o encerramento técnico não foi documentado.

## Risco

Remover o recurso errado pode bloquear trabalho legítimo ou deixar acesso indevido ativo.

## Próximas ações

1. Identificar conta, recurso e proprietário da pasta.
2. Registrar permissões atuais e a aprovação.
3. Aplicar menor privilégio e testar acesso negado/concedido conforme pedido.
4. Registrar resultado, data e responsável.

- Resultado final: parcialmente confirmado; exige auditoria de permissões.
- Runbook: `runbooks/acesso-compartilhamentos.md`
