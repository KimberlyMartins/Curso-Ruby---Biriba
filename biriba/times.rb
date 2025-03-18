                                      
                                    # TIMES
#para executar o mesmo comando várias vezes usa o times, exemplo, 10 vezes coloque oi!

10.times { |n| puts "Oi! #{n}" } #0 1 2 3 4 5 6 7 8 9 com a contagem começando do 0

#OU


10.times { |n|
  puts "Oi! #{n}"
}

#OU


10.times do |n| puts "Oi! #{n}" end

#OU

2.times do |x|
  puts x
end
# 0
# 1


#OU sem o #{n} para não imprimir o número do lado --------------------------------

10.times do
  puts "Oi!"
end

#OU 

10.times do puts "Oi!" end

#OU 

10.times {
  puts "Oi!"
}


#OU 

10.times { puts "Oi!" }

contador = 5
contador.times do
  puts "contando..."
end




4.times do |n|
  puts n
  if n % 2 == 0
    puts "PAR!"
  end
end
#0
# PAR!
#1
#2
#PAR!
#3


10.times do |n|
  puts n
  if n % 5 == 0
    puts "multiplo de 5!"
    break
  end
end
#0
#multiplo de 5!


10.times do |n|
  n = n + 1
  puts n
  if n % 5 == 0
    puts "multiplo de 5!"
    break
  end
end
#1
#2
#3
#4
#5
#multiplo de 5!


4.times do |n|
  if n == 2
    next
  else
    puts n
  end
end

4.times do |n|
  next if n == 2
  puts n
end


valor = 0
5.times do
  valor = valor + 10
end
puts valor
# 50



nascimento = 1989
hoje = 2020
(nascimento..hoje).each do |x|
  puts x
end

=begin        
Exercícios------------------------------
1 - Utilizando a função .times, 
escreva um código que imprima todos os números de 1 até 21, exceto múltiplos de 3.
=end

21.times do |n|
  n = n + 1
  if n % 3 == 0
    next
  end
  puts n
end

# OPCAO DE RESPOSTA 1
21.times do |x|
  if x % 3 != 0
    puts x
  end
end

# OPCAO DE RESPOSTA 2
21.times do |x|
  if x % 3 == 0
    next
  end
  puts x
end

# OPCAO DE RESPOSTA 3
21.times do |x|
  next if x % 3 == 0
  puts x
end

# OPCAO DE RESPOSTA 4
21.times do |x|
  puts x unless x % 3 == 0
end


=begin        
2 - Cálculo de potência usando .times:

Uma potência de expoente natural é o resultado da multiplicação de
um dado número por si mesmo um certo número de vezes, ou seja,
é uma forma de representar sucessivas multiplicações de um só fator,
repetido um determinado número de vezes.
Ou seja, 3 x 3 x 3 x 3 x 3 é o mesmo que 3 elevado a 5.

Calcule e imprima o valor de 4 elevado a 5, usando .times
=end


1.times do |n|
 n = 4 * 4 * 4 * 4 * 4
  puts n
end

# RESPOSTA 

resultado = 4
4.times do 
  resultado = resultado * 4
end
puts resultado


=begin        
3 - Crie uma variável com seu nome e uma variável com sua idade. 
Escreva um código que imprima cada ano de sua idade a frase Fulano já teve 1 ano(s) ou Fulano tem 1 ano

Exemplo:

  nome = "Fulano"
  idade = 3
  # Fulano já teve 1 ano(s)
  # Fulano já teve 2 ano(s)
  # Fulano tem 3 ano(s)

=end


nome = "kim"
idade = 28

28.times do |i|
  i = idade - 1
  puts "#{nome} ja teve #{i}  ano(s)"
end



nome = "kim"
idade = 28

28.times do |i|
  i = 1
  puts "#{nome} ja teve #{i} ano(s)"
end



nome = "kim"
idade = 28

28.times do |i|
  i = idade - i
  puts "#{nome} ja teve #{i} ano(s)"
end



nome = "kim"
idade = 28

28.times do |i|
  i = i + 1
  puts "#{nome} ja teve #{i} ano(s)"
end



nome = "kim"
idade = 28

27.times do |i|
  i = i + 1
  puts "#{nome} ja teve #{i} ano(s)"
end
if i = 28
   puts "#{nome} tem #{i} ano(s)"
end


nome = "Kimberly"
idade = 28

27.times do |i|
  i = i + 1
  puts "#{nome} ja teve #{i} ano(s)"
end
if i = 28
  puts "#{nome} tem #{i} ano(s)"
end

# Resposta

nome = "Rafael"
  idade = 30

  idade.times do |x|
    x = x + 1 #Evitar o zero

    if x == idade
      puts "#{nome} tem #{x} ano(s)"
    else
      puts "#{nome} já teve #{x} ano(s)"
    end
  end

=begin        
4 - Considerando a variável abaixo:

letras = ["A", "B", "C"]

Escreva um código que imprima em cada linha a sequência: 
A1, A2, A3, A4, A5, B1, B2, B3, B4, B5, C1, C2, C3, C4, C5

NOTA: Você pode combinar o uso de .times e .each aqui.
=end


letras = ["A", "B", "C"]

letras.each do |a|
  5.times do |letra|
    letra = letra + 1
    puts "#{a}#{letra}"
  end
end

# RESPOSTA 

letras = ["A", "B", "C"]

letras.each do |letra|
  5.times do |numero|
    puts "#{letra}#{numero + 1}"
  end
end

=begin        
5 - Considerando a variável abaixo:

inicio = 32

Imprima todos os números desde a variável inicio até o número 51.
=end

inicio = 32
final = 51
(inicio..final).each do |fim|
  puts fim
end


#RESPOSTA
inicio = 32
(inicio..51).each { |x| puts x }
(inicio..51).each do |x|
  puts x
end

#

=begin        
6 - Considerando a variável abaixo:

temperatura_min_celsius = 10
temperatura_max_celsius = 40

Utilizando ranges, escreva um código que imprima cada uma das temperaturas junto com uma descrição baseado
 na regra abaixo:

    <=19 Imprimir “frio”
    >=20 e <=29 Imprimir “agradável”
    >=30 imprimir “quente”
=end


temperatura_min_celsius = 10
temperatura_max_celsius = 40

(0..40).each do |celsius|
  puts celsius
  if celsius <= 19
    puts "Frio"
  elsif 
    celsius >= 20 and  celsius <= 29 
    puts "Agradavel"
    else
      celsius >= 30
      puts "Quente"
    end
end



(0..40).each do |celsius|
  celsius = celsius + 1
  if celsius <= 19
    puts "#{celsius}Frio"
  end

end


(10..40).each do |celsius|
  if celsius >= 30 
    puts "#{celsius} Quente"
  elsif 
    celsius >= 20 and celsius <= 29
    puts "#{celsius} Agradável"
  else
    celsius <= 19
    puts "#{celsius} Frio"
  end
end

=begin        
7 - DESAFIO

Considerando uma sequência de 1 até 3, veja o exemplo abaixo:

1
1. Rafael
2
1. Rafael
2. Rafael
3
1. Rafael
2. Rafael
3. Rafael

Escreva um código que imprima ,linha a linha, uma sequência de 1 até 10. 
Entre cada número da sequência, imprima o seu nome a quantidade de vezes referente ao número que você imprimiu.
 (Veja o exemplo acima e faça o mesmo de 1 até 10)
=end

(1..10).each do |nome| #imprime o nome 10 vezes
  nome = "Kimberly"
  puts nome
  end


10.times do |nome| # imprime numeros de 1 a 10
  nome = nome + 1
  puts nome
end

10.times do |nome|
  nome = nome + 1
  puts nome
  nome.each do |vezes|
    puts "#{nome} #{vezes}"
  end
end


10.times do |numero| # imprime numeros de 1 a 10
  numero = numero + 1
  puts numero
  (1..10).each do |nome| #imprime o nome 10 vezes
  nome = "Kimberly"
  puts nome
  end
end


10.times do |numero| # imprime numeros de 1 a 10
  numero = numero + 1
  puts numero
  (1..10).each do |nome| #imprime o nome 10 vezes
  nome = "Kimberly"
  puts "#{numero}.#{nome}"
  end
end


(1..10).each do |numero|
  puts numero
  numero.times do |x|
    puts "#{x + 1}. Kimberly"
  end
end