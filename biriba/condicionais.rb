if false then
  puts "é verdadeiro!"
end

if true
  puts "é verdadeiro!"
end


exemplo = "rafael"
if exemplo == "rafael"
  puts "Oi Rafael!"
end


=begin
# == # comparar igual
# != # diferente
# > # maior
# >= # maior igual
# < # menor
# <= #menor igual
=end


exemplo = "kimberly" 
if exemplo != "Kimberly"
  puts "não é"
end

#------------------------------------------------------
ligado = true
if ligado
  puts "esta ligado"
end

ligado = false

if ligado 
  puts "ligado"
else 
  puts "desligado"
end

ligado = true

if ligado 
  puts "ligado"
else 
  puts "desligado"
end
#----------------------------------------------

tomada = true

if tomada 
  puts "ligada"
else 
  puts "desligada"
end


tomada = true

if tomada  == false
  puts "desligada"
else 
  puts "ligada"
end

#-----------------------------------------
exemplo = 9
if exemplo <= 10
  puts "menor/igual a 10"
else
  puts "maior que 10"
end
#------------------------------------



exemplo = false
if exemplo != true
  puts "não é true!"
end

unless exemplo == true
  puts "não é true"
end



if expressao_verdadeira 

  unless (if not) expressao_falsa
  end




#------------------------------------
#true,false
#if, else, unless
#elsif

exemplo = "Rafael"
if exemplo == "Rafael"
  idade = "30 anos"
else
  idade = "desconhecida"
end
puts idade


exemplo = "kim"
if exemplo == "Rafael"
  puts "Oi Rafael!"
elsif exemplo == "Roberto"
  puts "Oi Roberto"
else
  puts "Oi Desconhecido"
end

#-------------------------------------

# and or 

a = 20
b = 30
if a == 20 and b == 40
  puts "a é 20 e b é 40"
elsif a == 30 and b == 30
  puts "a é 30 e b é 30"
elsif a == 20 and b == 30
  puts "a é 20 e b é 30"
else
  puts "alguma coisa está errada"
end


a = 5
b = 2
if a == 5 or b == 2
  puts "a é 5 ou b é 2"
end

a = 40
b = 2
if a == 5 or b == 2
  puts "a é 5 ou b é 2"
end

a = 5
b = 1
if a == 5 or b == 2
  puts "a é 5 ou b é 2"
end

#---------------------------------------------
#ternário (#expressao_verdadeira ? sim : nao )

exemplo = "ana"
idade = exemplo == "Rafael" ? "30 anos" : "desconhecido"
puts idade


exemplo = "Rafael"

idade = exemplo == "Rafael" ? "30 anos" : "desconhecido"
puts idade



exemplo = false
idade = exemplo  ? "30 anos" : "desconhecido"
puts idade


if exemplo
  idade = "30"
else 
  idade = "desc."
end
  puts idade 


#EXERCICIOS 
=begin

Utilizando o código com a variável abaixo:

peso = 50

Se a variável peso é maior ou igual à 70: imprimir o texto “Está acima do peso.” 
Se a variável peso for menor ou igual que 40, imprimir “Está abaixo do peso” 
Se a variável estiver entre 40~70, imprimir “Está no peso ideal”

NOTA: Para verificar se o código está correto, execute mais de uma vez, trocando o valor do peso para 100 e 30.
=end




peso = 50
a = 70
b = 40
c = peso > 40 and peso >70

if 
  peso >= a
  puts "Está acima do peso."
elsif peso = c
  puts "Está no peso ideal"
elsif peso <= b 
  puts "Está abaixo do peso"
end



peso = 50

if peso >= 70
  puts "Está acima do peso."
elsif peso > 40 and peso < 70
  puts "Está no peso ideal"
elsif peso <= 40
  puts "Está abaixo do peso"
end



#exercicio 2

#coloque o codigo abaixo em uma única linha

valor = 10
if valor > 10
  taxa = 5
else
  taxa = 2
end
puts taxa



valor = 10
valor = taxa == valor >10 ? "taxa 5" : "taxa 2"
puts taxa


#correção 

valor = 10
taxa = valor > 10 ? 5 : 2
puts taxa


 #OU
puts valor > 10 ? 5 : 2

#exercicio 3 

=begin
  Considerando os exemplos abaixo:

exemplo = {
  valor: 9
  taxa: 5
}

exemplo = {
  valor: 15
  taxa: 15
}

exemplo = {
  valor: 14
  taxa: 25
}

Escreva um código (utilizando apenas um bloco de if/elsif/else) que verifique o hash exemplo se:

    Se valor ou taxa for maior que 15, imprimir “Muito alto”
    Se valor e taxa somados forem maior ou igual a 30, imprimir “Soma muito alta”

NOTA: Você deve utilizar uma váriavel de exemplo por vez. 
Utilizando o mesmo código e verificando se o retorno esta correto.

NOTA2: Você não pode criar nenhuma variável adicional.
=end


exemplo = {
  valor: 9,
  taxa: 5
}

if 
  exemplo [:valor] or [:taxa] > 15 
  puts "Muito alto"
elsif
  exemplo "#{[:valor]+[:taxa]}" >= 30
  puts "Soma muito alta"
end


# Correção -------

if exemplo[:valor] > 15 or exemplo[:taxa] > 15
  puts "Muito alto"
elsif (exemplo[:valor] + exemplo[:taxa]) >= 30
  puts "Soma muito alta"
end


=begin 
4 - DESAFIO

Você precisa escrever um código para calcular IMC corporal.

IMC:
<18.5 - Abaixo do peso
18.5 ~ 24.99 - Normal
> 25 - Acima do peso
> 30 - Obeso

Seus pacientes são:

    Mario - 200.2kg - 1,75m
    Roberta - 65.6kg - 1,65m
    Pedro - 79.7kg - 1,77m
    Ana - 35.3kg - 1,60m

Formula do IMC: Peso / (Altura metros * Altura metros)

Imprima o resultado correto do IMC para cada paciente, 
utilizando o mesmo código, apenas mudando as variáveis.
=end

peso = 65.6
altura = 1.65
imc = peso / (altura * altura)


if 
  imc < 18.5 
  puts "Abaixo do peso"
elsif
  imc > 18.5 and imc < 24.99 
  puts "Normal"
elsif 
  imc > 25
  puts "Acima do peso"
 elsif 
  imc > 30
  puts "obeso"
end


#correção -----------------

nome = "Mario"
peso = 200.2
altura = 1.75
imc = peso / (altura * altura)


if 
  imc > 30 
  resultado = "Obeso"
elsif
  imc > 25
  resultado =  "Acima do peso"
elsif
  imc > 18.5 and imc < 24.99
  resultado = "Normal"
elsif
  imc < 18.25
  resultado = "Abaixo do peso"
else
  resultado = "Algo esta errado"
end

puts "#{"Mario"} está: #{resultado}" 