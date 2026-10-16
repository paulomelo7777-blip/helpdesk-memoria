# Triagem de impressora em rede

## Quando usar

Quando uma impressora de rede funciona em alguns PCs, deixa de imprimir ou não é encontrada pelo Windows.

## Antes de começar

- Registrar unidade, máquina, usuário e autorização.
- Confirmar o nome/modelo da impressora e se outro PC imprime no momento.
- Não alterar roteador, Wi-Fi ou IP sem registrar o estado anterior.

## Procedimento

1. Confirmar se a impressora está ligada, sem erro local e conectada à rede esperada.
2. Verificar a fila de impressão e o serviço Spooler no PC afetado.
3. Comparar rede, gateway e faixa de IP do PC afetado com um PC que imprime.
4. Descobrir o IP atual da impressora por painel, página de rede ou interface do roteador.
5. Testar conectividade entre PC e impressora antes de reinstalar driver.
6. Conferir se a porta configurada no Windows aponta para IP fixo ou reservado; evitar descoberta automática como solução definitiva quando ela estiver instável.
7. Se houver dois roteadores ou segmentos sem roteamento, colocar PC e impressora na mesma rede ou corrigir a topologia com aprovação.
8. Imprimir página de teste e registrar resultado.

## Validação

- O PC afetado imprime uma página de teste.
- A impressora permanece acessível após reinício controlado, quando possível.
- O IP e a rede ficam documentados na ficha da unidade.

## Reversão

- Anotar a porta e driver anteriores antes de qualquer mudança.
- Se a alteração não funcionar, restaurar a configuração anterior e escalar a topologia de rede.
