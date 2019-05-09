# Classe generica Conta. Aqui possui tudo que um 'conta' deve ter
class Conta
  attr_accessor :saldo, :mensagem

  def initialize(saldo)
    self.saldo = saldo
  end

  def sacar(valor, max, taxa)
    if valor > max
      self.mensagem = 'Limite maximo para saque é R$ ' + max.to_s
    elsif saldo < valor
      self.mensagem = 'Saldo insuficiente para saque :('
    else
      self.saldo -= valor + taxa
    end
  end
end

# Classe conta corrente. Aqui possui coisas especificas de uma conta corrente
class ContaCorrente < Conta
  def sacar(valor, max = 700, taxa = 5.00)
    super
  end
end

# Classe conta poupança. Aqui possui coisas especificas de uma conta poupança
class ContaPoupanca < Conta
  def sacar(valor, max = 500, taxa = 2.00)
    super
  end
end
