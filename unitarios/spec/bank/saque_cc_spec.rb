require_relative '../../app/bank.rb'

describe ContaCorrente do
  describe 'saque' do
    context 'Saque em Conta Corrente realizado' do
      before(:all) do
        @cc = ContaCorrente.new(1000.00)
        @cc.sacar(200.00)
      end
      it 'então saldo é atualizado' do
        expect(@cc.saldo).to eq 795.00
      end
    end

    context 'Deu ruim, minha conta esta zerada' do
      before(:all) do
        @cc = ContaCorrente.new(0.00)
        @cc.sacar(200.00)
      end
      it 'então exibe mensagem' do
        expect(@cc.mensagem).to eq 'Saldo insuficiente para saque :('
      end
      it 'então saldo não alterado' do
        expect(@cc.saldo).to eq 0.00
      end
    end

    context 'Tenho saldo mas não o suficiente' do
      before(:all) do
        @cc = ContaCorrente.new(500.00)
        @cc.sacar(501.00)
      end
      it 'então exibe mensagem' do
        expect(@cc.mensagem).to eq 'Saldo insuficiente para saque :('
      end
      it 'então saldo não é alterado' do
        expect(@cc.saldo).to eq 500.00
      end
    end

    context 'Limite de saque diário' do
      before(:all) do
        @cc = ContaCorrente.new(1000.00)
        @cc.sacar(701.00)
      end
      it 'então exibe mensagem' do
        expect(@cc.mensagem).to eq 'Limite maximo para saque é R$ 700'
      end
      it 'então saldo não é alterado' do
        expect(@cc.saldo).to eq 1000.00
      end
    end
  end
end
