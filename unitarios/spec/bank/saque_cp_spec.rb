require_relative '../../app/bank.rb'

describe ContaPoupanca do
  describe 'saque' do
    context 'Saque em Conta Corrente realizado' do
      before(:all) do
        @cp = ContaPoupanca.new(1000.00)
        @cp.sacar(200.00)
      end
      it 'então saldo é atualizado' do
        expect(@cp.saldo).to eq 798.00
      end
    end

    context 'Deu ruim, minha conta esta zerada' do
      before(:all) do
        @cp = ContaPoupanca.new(0.00)
        @cp.sacar(200.00)
      end
      it 'então exibe mensagem' do
        expect(@cp.mensagem).to eq 'Saldo insuficiente para saque :('
      end
      it 'então saldo não alterado' do
        expect(@cp.saldo).to eq 0.00
      end
    end

    context 'Tenho saldo mas não o suficiente' do
      before(:all) do
        @cp = ContaPoupanca.new(400.00)
        @cp.sacar(401.00)
      end
      it 'então exibe mensagem' do
        expect(@cp.mensagem).to eq 'Saldo insuficiente para saque :('
      end
      it 'então saldo não é alterado' do
        expect(@cp.saldo).to eq 400.00
      end
    end

    context 'Limite de saque diário' do
      before(:all) do
        @cp = ContaPoupanca.new(1000.00)
        @cp.sacar(701.00)
      end
      it 'então exibe mensagem' do
        expect(@cp.mensagem).to eq 'Limite maximo para saque é R$ 500'
      end
      it 'então saldo não é alterado' do
        expect(@cp.saldo).to eq 1000.00
      end
    end
  end
end
