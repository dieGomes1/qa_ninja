# Criação da classe que adiona um vingador
class AddAvengers
  attr_accessor :avengers # variavel avengers

  def initialize  # construtor para transformar a variavel em array
    self.avengers = []
  end

  def put(avenger) # metodo que adiciona um vigador no array
    avengers.push(avenger)
  end
end

# suite de testes para validar a inclusão de vingador no array
describe AddAvengers do
  it 'adiciona vingador' do # nome do testes
    hq = AddAvengers.new # instancia a classe AddAvengers
    hq.put('spider man') # chama o metodo que adiciona o vingador
    expect(hq.avengers).to eq ['spider man'] # valida que dentro do array 'avengers' possui o heroi incluso anteriormente
  end

  it 'adiona lista de vingadores' do
    hq = AddAvengers.new
    hq.put('Hulk')
    hq.put('Thor')

    expect(hq.avengers).to include 'Thor' # outra forma de validar que dentro do array possui o heroi incluso
  end
end
