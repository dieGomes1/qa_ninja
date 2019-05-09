Estória: Saque no Caixa Eletrônico
  Sendo um cliente que é correntista do NinjaBank
  Posso sacar dinheiro
  Para que eu consiga compra

Cenário: Saque em Conta Corrente realizado
  Dado que eu tenho R$ 1000.00 em minha conta corrente
  Quando faço um saque de R$ 200.00
  Então meu saldo final deve ser R$ 800.00

Cenário: Deu ruim, minha conta esta zerada
  Dado que eu tenho R$ 0.00 em minha conta corrente
  Quando faço um saque de R$ 200.00
  Então vejo a mensagem "Saldo insuficiente para saque :("

Cenário: Tenho saldo mas não o suficiente
  Dado que eu tenho R$ 500.00 em minha conta corrente
  Quando faço um saque de R$ 501.00
  Então vejo a mensagem "Saldo insuficiente para saque :("
  E meu saldo final deve ser R$ 500.00

Cenário: Limite de saque diário
  Dado que eu tenho R$ 1000.00 em minha conta corrente
  Quando faço um saque de R$ 701.00
  Então vejo a mensagem "Limite maximo para saque é R$ 700.00"
  E meu saldo final deve ser R$ 1000.00
