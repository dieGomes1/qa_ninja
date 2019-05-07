# criacao da classe Carro
class Carro
  attr_accessor :nome
  attr_accessor :marca
  attr_accessor :modelo
  attr_accessor :quantidadePortas

  def ligar
    puts 'Carro ligado'
  end

  def businar
    puts 'Businando BEEEEEEE!!'
  end

  def parar
    puts 'Carro parou'
  end
end

civic = Carro.new
civic.nome = 'Civic'
civic.marca = 'Honda'
civic.modelo = 'SI'
civic.quantidadePortas = 4

civic.ligar
civic.businar
civic.parar

puts civic.nome
