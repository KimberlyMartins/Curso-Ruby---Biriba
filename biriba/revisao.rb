# --------------- Revisão de conteúdos até a aula 11 -----------------------

puts "Aula 4"
puts 1 + 2
puts 5.0 / 2
puts 5 / 2



teste = 10
puts "teste + 1 = #{teste + 1}"



puts "Aula 5 - Array"
lista = [100, 102.50, "Teste"]



nomes = "Rafael,Roberto"
nomes.split(",")
puts "#{nomes}" #["Rafael", "Roberto"]




puts "Aula 6 - Hash"

lista = []
lista << "a"
lista << "b"
puts "#{lista}"
# ["a", "b"]

#################################

hash = { a: 2 }
puts hash[:a]
# 2

hash[:b] = 3
puts hash
# { a: 2, b: 3}



puts "Aula 7 - Conditionals"

a = 5
if a < 10
  puts "menor que 10"
else
  puts "maior que 10"
end

#################################

nome = "Rafael"
if nome != "Roberto"
  puts "não é o Roberto!"
end

puts "não é o Roberto!" if nome != "Roberto"

#################################

cor = "Vermelho"
unless cor == "Preto"
  puts "Essa cor não é preto!"
end

#################################

bebida = "Refrigerante"
comida = "Hambuger"

if bebida == "Refrigerante" and comida == "Hambuger"
  puts "Excelente combinação"
elsif bebida == "Nescau" and comida == "Pão com ovo"
  puts "Belo café da manhã"
else
  puts "Não conheço essa combinação"
end



puts "Aula 8 - Each"

lista = [1,2,3,4,5]
lista.each do |numero|
  puts numero
end

#################################

dicionario = { a: "A", b: "Be", c: "Ce", d: "De" }
dicionario.each do |chave, valor|
  puts "a chave #{chave} é #{valor}"
end

#################################

lista = [1,2,3,4,5]
lista.each do |numero|
  break if numero > 3
  puts numero
end
# 1, 2, 3

#################################

lista = [1,2,3,4,5]
lista.each do |numero|
  next if numero == 3
  puts numero
end
# 1, 2, 4, 5



puts "Aula 9 - Times and Range"

10.times do
  puts "Imprimir 10 vezes!"
end

#################################

10.times do |numero|
  puts "Contando: #{numero}..."
end

#################################

4.times do |n|
  puts n
  if n % 2 == 0
    puts "PAR"
  end
end
# 0
# PAR
# 1
# 2
# PAR
# 3

#################################

(50..55).each do |numero|
  puts numero
end
# 50 51 52 53 54 55

#################################

puts "Aula 10 - While"

numero = 1

while numero < 50 do
  puts numero
  numero = numero + 1
end

# 1 2 3 4 5 ...... 47 48 49

#################################

nome = "rafael"
nome_digitado = ""

while nome != nome_digitado
  puts "Digite um nome:"
  nome_digitado = gets.chomp
end
puts "Acertou!"



# Exercícios revisão
=begin
1 - Peça para o usuário digitar 10 números. 
Seu programa deve retornar uma mensagem dizendo qual foi o maior número digitado. 
(Exemplo: O maior número é 59)
=end
puts "Digite 10 números"
10.times do gets.chomp
end

puts "O maior número é #{}"



puts "Digite 10 números"
numero = 10.times do gets.chomp #imprime que o maior é 10
end

puts "O maior número é #{numero}"



puts "Digite 10 números"
10.times do |n| gets.to_i
end

puts "O maior número é "




puts "Digite 10 números"
10.times do |n| 
  n = gets.chomp.to_i
end
puts "o maior numero é "


puts "Digite 10 números"
10.times do |numeros| gets.chomp.to_i
end
puts "O maior número digitado é: "



maior = 0
puts "Digite 10 números"
5.times do |num| gets.chomp.to_i
  num = " "
  if 
    maior < num
    puts "O maior número é #{num}"
  end
end




#Correção
###############################
# SOLUCAO 1
##############################

numeros_digitados = []

10.times do
  puts "Digite um número:"
  numero = gets.to_i
  numeros_digitados << numero
end

maior_numero = 0

numeros_digitados.each do |numero|
  if maior_numero < numero
    maior_numero = numero
  end
end

puts maior_numero


###############################
# SOLUCAO 2
##############################
maior_numero = 0

10.times do
  puts "Digite um número:"
  numero = gets.to_i

  if maior_numero < numero
    maior_numero = numero
  end
end

puts "O maior número digitado foi #{maior_numero}"

=begin
2 - Faça uma calculadora simples, para somar ou diminuir dois números. 
Pergunte ao usuário o primeiro número,
 o segundo número e pergunte se a operação vai ser soma ou subtracao e retorne o valor.
=end

puts "Digite o primeiro número para calcular"
numero1 = gets.chomp.to_i
puts "Digite o segundo número"
numero2 = gets.chomp.to_i

puts "Qual operação deseja realizar adição ou subtração"
operação = gets.chomp
if 
  operação == "adição"
  puts "O resultado é #{numero1 + numero2}"
else
  operação == "subtração"
  puts "O resultado é #{numero1 - numero2}"
end

################3Correção
puts "Digite o primeiro numero:"
primeiro_numero = gets.to_i

puts "Digite o segundo numero:"
segundo_numero = gets.to_i

puts "Digite soma ou subtracao:"
operacao = gets.chomp

if operacao == "soma"
  puts primeiro_numero + segundo_numero
elsif operacao == "subtracao"
  puts primeiro_numero - segundo_numero
else
  puts "Operação não reconhecida #{operacao}"
end



#Calculadora com adição, subtração, divisão ou multiplicação
puts "Digite o número para calcular"
numero1 = gets.chomp.to_i
puts "Digite o outro número"
numero2 = gets.chomp.to_i

puts "Qual operação deseja realizar adição, subtração, divisão ou multiplicação?"
operação = gets.chomp
if 
  operação == "adição"
  puts "O resultado é #{numero1 + numero2}"
elsif
  operação == "subtração"
  puts "O resultado é #{numero1 - numero2}"
elsif 
  operação == "divisão"
  puts "O resultado é #{numero1 / numero2}"
elsif 
  operação == "multiplicação"
  puts "O resultado é #{numero1 * numero2}"
else
  puts "Operação não reconhecida"
end




=begin
3 - Jogo da adivinhação da senha: Crie uma variável (vai ser a senha secreta) 
com um número inteiro a ser adivinhado pelo usuário.
 Peça ao usuário para adivinhar o número. Se ele acertar, imprima que ele acertou. 
 Se ele errar, diga se o palpite foi maior ou menor que o número secreto e pergunte novamente.
 Continue perguntando ao usuário até o valor digitado for igual a sua senha secreta.
=end


secreta = "6978"
puts "Advinhe o número secreto"
digitado = gets.chomp.to_i
if 
  digitado == secreta 
  puts "Acertou"
elsif
  digitado >= secreta
  puts "O palpite é maior que o número secreto!"
elsif 
  digitado <= secreta 
  puts "O palpite é menor que o número secreto!"
end



secreta = "6978"
puts "Advinhe o número secreto"
digitado = gets.chomp.to_i

if 
  digitado = secreta
  puts "Acertou"
end


secreta = "6978"
puts "Advinhe o número secreto"
digitado = gets.chomp.to_i

if digitado == secreta
  puts "errou"
elsif digitado = secreta
  puts "Acertou"
end


secreta = 6978

puts "Advinhe o número secreto"
digitado = gets.chomp.to_i

if 
  digitado >= secreta
  puts "O seu palpite é maior que o número secreto!"
  puts "Tente novamente"
digitado = gets.chomp.to_i
elsif 
  digitado <= secreta
  puts "O seu palpite é menor que o número secreto"
  puts "Advinhe o número secreto"
digitado = gets.chomp.to_i
end


secreta = 6978

puts "Advinhe o número secreto"
digitado = gets.chomp.to_i

if 
  digitado >= secreta
  puts "O seu palpite é maior que o número secreto!"
digitado = gets.chomp.to_i
elsif 
  digitado <= secreta
  puts "O seu palpite é menor que o número secreto"
digitado = gets.chomp.to_i
end



secreta = 6978

puts "Advinhe o número secreto"
digitado = gets.chomp.to_i
   while 
    digitado != secreta
    puts "Tente novamente!"
    digitado = gets.chomp.to_i
  end

if 
  digitado == secreta
  puts "Acertou miseravi!"
elsif
  digitado >= secreta
  puts "O seu palpite é maior que o número secreto!"
elsif 
  digitado <= secreta
  puts "O seu palpite é menor que o número secreto"
end




secreta = 6978

puts "Advinhe o número secreto"
digitado = gets.chomp.to_i
   while 
    digitado != secreta
    puts "Tente novamente!"
    digitado = gets.chomp.to_i
    if 
      digitado == secreta
      puts "Acertou miseravi!"
    elsif
      digitado >= secreta
      puts "O seu palpite é maior que o número secreto!"
    elsif 
      digitado <= secreta
      puts "O seu palpite é menor que o número secreto"
    end
  end



secreta = 6978

puts "Advinhe o número secreto"
digitado = gets.chomp.to_i
    if 
      digitado == secreta
      puts "Acertou miseravi!"
    elsif
      digitado >= secreta
      puts "O seu palpite é maior que o número secreto!"
    elsif 
      digitado <= secreta
      puts "O seu palpite é menor que o número secreto"
      while 
        digitado != secreta
        puts "Tente novamente!"
        digitado = gets.chomp.to_i
      end
    end



secreta = 6978

puts "Advinhe o número secreto"
digitado = gets.chomp.to_i
while 
    if 
      digitado == secreta
      puts "Acertou miseravi!"
    elsif
      digitado >= secreta
      puts "O seu palpite é maior que o número secreto!"
        puts "Tente novamente!"
      digitado = gets.chomp.to_i
    elsif 
      digitado <= secreta
      puts "O seu palpite é menor que o número secreto"
        puts "Tente novamente!"
      digitado = gets.chomp.to_i
    else 
      digitado != secreta
      puts "Tente novamente!"
      digitado = gets.chomp.to_i
    end
  end



secreta = 6978

puts "Advinhe o número secreto"
digitado = gets.chomp.to_i
while 
    if 
      digitado == secreta
      puts "Acertou miseravi!"
    elsif
      digitado >= secreta
      puts "O seu palpite é MAIOR que o número secreto."
        puts "Tente novamente!"
      digitado = gets.chomp.to_i
    elsif 
      digitado <= secreta
      puts "O seu palpite é MENOR que o número secreto."
        puts "Tente novamente!"
      digitado = gets.chomp.to_i
    end
  end



secreta = 6978

puts "Advinhe o número secreto"
digitado = gets.chomp.to_i
while 
    if 
      digitado == secreta
      puts "Acertou miseravi!"
    elsif
      digitado > secreta
      puts "O seu palpite é MAIOR que o número secreto."
        puts "Tente novamente!"
      digitado = gets.chomp.to_i
    elsif 
      digitado < secreta
      puts "O seu palpite é MENOR que o número secreto."
        puts "Tente novamente!"
      digitado = gets.chomp.to_i
    end
  end


# Correção ------------------------------------

senha_secreta = 589
senha_digitada = 0
while senha_secreta != senha_digitada do
  puts "Digite um número:"
  senha_digitada = gets.to_i

  if senha_digitada > senha_secreta
    puts "A senha secreta é menor que a senha digitada!"
  elsif senha_digitada < senha_secreta
    puts "A senha secreta é maior que a senha digitada!"
  end
end
puts "Parabéns, você acertou!"



=begin
4 - Considerando o código abaixo:

comidas = {
  massas: ["Espageti", "Fusili", "Parafuso"],
  frutas: ["Banana", "Morango", "Abacaxi", "Pessego", "Uva"],
  legumes: ["Cenoura", "Beterraba", "Batata"],
  graos: ["Feijao", "Ervilha", "Lentilha"],
  folhas: ["Alface", "Agriao", "Espinafre"]
}

Crie uma única lista contendo todos as comidas e imprima seu valor.
=end
comidas = {
  massas: ["Espageti", "Fusili", "Parafuso"],
  frutas: ["Banana", "Morango", "Abacaxi", "Pessego", "Uva"],
  legumes: ["Cenoura", "Beterraba", "Batata"],
  graos: ["Feijao", "Ervilha", "Lentilha"],
  folhas: ["Alface", "Agriao", "Espinafre"]
}

comidas = 
:massas.each do |massa|
  :frutas.each do |fruta|
    puts "#{massa}#{fruta}"
  end
end



comidas = {
  massas: ["Espageti", "Fusili", "Parafuso"],
  frutas: ["Banana", "Morango", "Abacaxi", "Pessego", "Uva"],
  legumes: ["Cenoura", "Beterraba", "Batata"],
  graos: ["Feijao", "Ervilha", "Lentilha"],
  folhas: ["Alface", "Agriao", "Espinafre"]
}

comidas.each do |comida|
  massas.each do |massa|
    frutas.each do |fruta|
    end
  end
end
puts comida


# Imprime a lista com todas as informações
comidas = {
  massas: ["Espageti", "Fusili", "Parafuso"],
  frutas: ["Banana", "Morango", "Abacaxi", "Pessego", "Uva"],
  legumes: ["Cenoura", "Beterraba", "Batata"],
  graos: ["Feijao", "Ervilha", "Lentilha"],
  folhas: ["Alface", "Agriao", "Espinafre"]
}

comidas.each do |comida|  #imprime toda a lista sem separação
  puts comida
end


comidas = {
  massas: ["Espageti", "Fusili", "Parafuso"],
  frutas: ["Banana", "Morango", "Abacaxi", "Pessego", "Uva"],
  legumes: ["Cenoura", "Beterraba", "Batata"],
  graos: ["Feijao", "Ervilha", "Lentilha"],
  folhas: ["Alface", "Agriao", "Espinafre"]
}
comidas.each do |chave, valor|
  puts "O cardápio é composto pelas #{chave} que são compostas de #{valor}"
end



comidas = {
  massas: ["Espageti", "Fusili", "Parafuso"],
  frutas: ["Banana", "Morango", "Abacaxi", "Pessego", "Uva"],
  legumes: ["Cenoura", "Beterraba", "Batata"],
  graos: ["Feijao", "Ervilha", "Lentilha"],
  folhas: ["Alface", "Agriao", "Espinafre"]
}
comidas.each do |chave, opcao| puts "O cardápio é composto por: #{chave}, as opções são#{opcao}"
end

# Correção ----------------------

comidas = {
  massas: ["Espageti", "Fusili", "Parafuso"],
  frutas: ["Banana", "Morango", "Abacaxi", "Pessego", "Uva"],
  legumes: ["Cenoura", "Beterraba", "Batata"],
  graos: ["Feijao", "Ervilha", "Lentilha"],
  folhas: ["Alface", "Agriao", "Espinafre"]
}

todas = []

comidas.each do |chave, valor|
  # chave: massas, valor: [espageti, fusili]...
  # chave: frutas, valor: [banana, ...]

  valor.each do |comida|
    todas << comida
  end
end

puts "#{todas}"



=begin
5 - Considerando o código abaixo:

lista1 = [1,3,6,7,8,12,15,22,24,29,30,35,42,46,55,76,78,83,89,95,102,107,114]
lista2 = [3,5,9,12,13,17,29,31,35,40,51,64,69,71,75,78,81,83,90,96,100,105,107]

Imprima uma lista com todos os valores que são comuns a lista1 e lista2 
=end



lista1 = [1,3,6,7,8,12,15,22,24,29,30,35,42,46,55,76,78,83,89,95,102,107,114]
lista2 = [3,5,9,12,13,17,29,31,35,40,51,64,69,71,75,78,81,83,90,96,100,105,107]

lista = "#{lista1 + lista2}"
puts lista #imprime as 2 listas juntas como array




lista1 = [1,3,6,7,8,12,15,22,24,29,30,35,42,46,55,76,78,83,89,95,102,107,114]
lista2 = [3,5,9,12,13,17,29,31,35,40,51,64,69,71,75,78,81,83,90,96,100,105,107]
lista1.each do |lis|
  lista2.each do |ta|
 puts "#{lis == ta}" 
end
end


lista1 = [1,3,6,7,8,12,15,22,24,29,30,35,42,46,55,76,78,83,89,95,102,107,114]
lista2 = [3,5,9,12,13,17,29,31,35,40,51,64,69,71,75,78,81,83,90,96,100,105,107]
lista1.each do |lis|
  puts lis
end
lista2.each do |ta|
  puts ta
  end


#Correção 
 lista1 = [1,3,6,7,8,12,15,22,24,29,30,35,42,46,55,76,78,83,89,95,102,107,114]
lista2 = [3,5,9,12,13,17,29,31,35,40,51,64,69,71,75,78,81,83,90,96,100,105,107]

lista_comum = []

lista1.each do |numero_lista1|
  lista2.each do |numero_lista2|
    if numero_lista1 == numero_lista2
      lista_comum << numero_lista1
      break
    end
  end
end

puts "#{lista_comum}"

=begin
6 - Desafio 
Imprima os números de 1 a 100. Se o número for múltiplo de 2, imprimir ping ao invez do número. Se o número for múltiplo de 5, imprimir pong ao invez do número. Se for multiplo de 2 e de 5, imprimir pingpong.

Exemplo:

1
ping
3
ping
pong
ping
7
ping
9
pingpong

=end

#Correção
#Solução 1 ------------------------
(1..100).each do |numero|
  if (numero % 2 ==0) and (numero % 5 == 0)
    imprimir = "Pingpong"
  elsif numero % 2 == 0
    imprimir = "ping"
  elsif numero % 5 == 0 
    imprimir = "pong"
  else 
    imprimir = numero 
  end
  puts imprimir
end

# Solução 2  --------------------
(1..100).each do |numero|
  imprimir = ""

  if numero % 2 == 0
    imprimir += "ping"
  end

  if numero % 5 == 0
    imprimir += "pong"
  end

  if imprimir == ""
    imprimir = numero
  end

  puts imprimir
end
