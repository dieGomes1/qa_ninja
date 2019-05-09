# Class Veiculo
class Veiculo
  attr_accessor :nome, :marca, :modelo

  def initialize(nome, marca, modelo)
    self.nome = nome
    self.marca = marca
    self.modelo = modelo
  end

  def ligar
    puts "O #{nome} está pronto para o trajeto!"
  end

  def buzinar
    puts "O #{nome} está buzinado"
  end
end

# classe Carro extendendo de Veiculo
class Carro < Veiculo
  def dirigir
    puts "O #{nome} está iniciando o trajeto"
  end
end

# classe Moto extendendo de Veiculo
class Moto < Veiculo
  def pilotar
    puts "O #{nome} está iniciando o trajeto"
  end
end

c1 = Carro.new('Civic', 'Honda', 'SI')
c1.ligar
c1.buzinar
c1.dirigir

c2 = Carro.new('Punto', 'Fiat', 'Turbo')
c2.ligar
c2.buzinar
c2.dirigir

c3 = Moto.new('Fazer', 'Yamaha', '250x')
c3.ligar
c3.buzinar
c3.pilotar
