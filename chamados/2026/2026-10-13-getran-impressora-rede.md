# [2026-10-13] [Getran] Impressora Epson L3250 inacessível

- Máquina: PC não identificado
- Usuário: não registrado
- Autorização: não registrada na conversa; confirmar em novo atendimento
- Relato: um PC deixou de imprimir, enquanto outro PC ainda imprimia.

## Evidências confirmadas

- A impressora era Epson L3250 e havia configuração com descoberta automática de porta, além de cópia duplicada.
- O PC que não imprimia e o PC que imprimia estavam associados a gateways diferentes.
- Não houve conectividade entre o PC afetado e o PC de referência.
- A impressora foi descoberta no segmento do PC que imprimia; a adição direta pelo PC afetado falhou.

## Hipótese

Há dois segmentos de rede não roteados, possivelmente com dois roteadores usando a mesma faixa de endereços. A impressora e o PC afetado não se enxergam.

## Próximas ações

1. Confirmar topologia e conexão física/Wi-Fi de PC, impressora e roteadores.
2. Colocar PC e impressora no mesmo segmento ou corrigir roteamento com aprovação.
3. Criar reserva DHCP ou IP fixo documentado para a impressora.
4. Padronizar porta TCP/IP e remover duplicatas somente após teste.

- Resultado final: não confirmado na conversa.
- Runbook: `runbooks/triagem-impressora-rede.md`
