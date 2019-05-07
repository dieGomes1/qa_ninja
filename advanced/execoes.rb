begin
  file = File.open('..\README.md')
  if File
    puts file.read
  end
rescue Exception => e
  puts e
end

def soma(v1, v2)
  v1 + v2
rescue Exception => m
  puts "Erro ao realizar a soma | erro: #{m}"
end

soma(10, '4')
