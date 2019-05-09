# descrição da suite de testes
describe 'suite rspec' do
  # cenario de testes IT é igual ao DEF
  it 'soma de valores' do
      soma = 10 + 5
      expect(soma).to eq 15
  end

  it 'subtracao de valores' do
    subtracao = 10 - 5
    expect(subtracao).to eq 5
  end
end
