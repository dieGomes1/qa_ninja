# Classe conta corrente
class ContaCorrente
  attr_accessor :saldo, :mensagem

  def initialize(saldo)
    self.saldo = saldo
  end

  def sacar(valor)
    if valor > 700.00
      self.mensagem = 'Limite maximo para saque é R$ 700.00'
    elsif saldo >= valor
      self.saldo -= valor
    else
      self.mensagem = 'Saldo insuficiente para saque :('
    end
  end
end

describe ContaCorrente do
  describe 'saque' do
    context 'Saque em Conta Corrente realizado' do
      before(:all) do
        @conta = ContaCorrente.new(1000.00)
        @conta.sacar(200.00)
      end
      it 'então saldo é atualizado' do
        expect(@conta.saldo).to eq 800.00
      end
    end

    context 'Deu ruim, minha conta esta zerada' do
      before(:all) do
        @conta = ContaCorrente.new(0.00)
        @conta.sacar(200.00)
      end
      it 'então exibe mensagem' do
        expect(@conta.mensagem).to eq 'Saldo insuficiente para saque :('
      end
      it 'então saldo não alterado' do
        expect(@conta.saldo).to eq 0.00
      end
    end

    context 'Tenho saldo mas não o suficiente' do
      before(:all) do
        @conta = ContaCorrente.new(500.00)
        @conta.sacar(501.00)
      end
      it 'então exibe mensagem' do
        expect(@conta.mensagem).to eq 'Saldo insuficiente para saque :('
      end
      it 'então saldo não é alterado' do
        expect(@conta.saldo).to eq 500.00
      end
    end

    context 'Limite de saque diário' do
      before(:all) do
        @conta = ContaCorrente.new(1000.00)
        @conta.sacar(701.00)
      end
      it 'então exibe mensagem' do
        expect(@conta.mensagem).to eq 'Limite maximo para saque é R$ 700.00'
      end
      it 'então saldo não é alterado' do
        expect(@conta.saldo).to eq 1000.00
      end
    end
  end
end
