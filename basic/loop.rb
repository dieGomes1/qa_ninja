5.times do |i|
  puts 'contando com TIMES ' + i.to_s
end
puts '*************************************************************'

contador = 0
while contador <= 5
  puts 'contando com WHILE ' + contador.to_s
  contador += 1
end

puts '*************************************************************'

for item in (0..5) do
  puts 'contando com FOR ' + item.to_s
end
puts '*************************************************************'

vingadores = ['thor', 'hulk', 'homem de ferro', 'homem formiga']

vingadores.each do |v|
  puts 'percorrendo um array com EACH ' + v
end
