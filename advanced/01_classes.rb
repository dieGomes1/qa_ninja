#class conta
class Conta
  attr_accessor :saldo, :nome

  def initialize(nome)
    self.saldo = 0.0
    self.nome = nome
  end

  def depositar(valor)
    self.saldo += valor
    puts "Voce depositou #{valor} reais"
  end
end

c = Conta.new('Diego')

c.depositar(100.00)
puts "A conta do #{c.nome} possui #{c.saldo} de saldo"

c.depositar(50.00)
puts "A conta do #{c.nome} possui #{c.saldo} de saldo"
