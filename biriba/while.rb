=begin
                                        GETS
   gets é um método que recebe como entrada um dado inserido pelo teclado. 
   Como ele captura qualquer coisa precisamos do .chomp para que quando o enter for pressionado 
   ele não crie uma quebra de linha.

  gets
  gets.chomp
  gets.to_i  .to_i = transforma a string em número inteiro
=end

puts "Digite algo e pressione enter!"
  exemplo = gets
  puts exemplo


  puts "Digite algo e pressione enter!"
  exemplo = gets
  puts "Meu nome é #{exemplo}"



puts "Digite o preço e pressione enter..."
  preco = gets.to_i #Converte para inteiro
  taxa = 2
  puts "Você vai pagar #{preco + taxa}"


puts "Nome:"
  nome = gets.chomp
  puts "Idade:"
  idade = gets.chomp
  puts "Seu nome é #{nome} e você tem #{idade} anos"


=begin
                      WHILE
Enquanto a informação for verdadeira faça tal coisa 
=end

while EXPRESSAO_VERDADEIRA do
  # alguma coisa
end

while EXPRESSAO_VERDADEIRA
  # alguma coisa
end

minha_variavel = true

while minha_variavel do
  puts "Entrei no while e vou definir minha_variavel pra false e sair!!"
  minha_variavel = false
end

puts "Já saí do while"



exemplo = 0

while exemplo < 10 do
  puts exemplo
  exemplo += 1
end

puts "fora do while!"



exemplo = 1
executar = true


while executar do
  puts exemplo
  exemplo += 1

  if exemplo == 10
    executar = false
  end
end

puts "fora do while!"


=begin
1. Escreva um código que receba um valor em minutos (digitado pelo usuário) e imprima o valor em segundos.
=end

puts "Quantos minutos você demora para fazer a lição?"
minuto = gets.to_i
segundos = minuto * 60
puts "Voce demora #{segundos} segundos"

#Correção

puts "Digite os minutos:"
minutos = gets.chomp.to_i

puts "Isso equivale à #{minutos * 60} segundos"


=begin
2 - Escreva um código que receba o nome de uma fruta.
Se o nome for morango você deve imprimir: Suco de morango é bom!.
Se o nome for manga você deve imprimir: Sorvete de manga é bom!.
Para todas as demais frutas você deve imprimir o nome da fruta e o texto parece ótima(o)! 
(Exemplo: “Banana parece ótima(o)!”)
=end

puts "Escolha uma fruta"
fruta = gets
if 
  fruta = morango
  puts "Suco de morango é bom!"
elsif
  fruta = manga 
  puts "Sorvete de manga é bom!"
elsif
  puts "#{fruta} parece ótima(o)"
end



puts "Escolha uma fruta"
fruta = gets
if 
  gets = "manga"
  puts "Sorvete de manga é ótimo"
end 



puts "Escolha uma fruta"
fruta = gets
if 
  fruta == "morango"
  puts "Suco de morango é bom!"
elsif
  fruta == "manga"
  puts "Sorvete de manga é bom!"
elsif
  puts "#{fruta}parece ótima(o)"
end



puts "Escolha uma fruta"
fruta = gets.chomp

if 
  fruta == "morango"
  puts "Suco de morango é bom!"
else 
  fruta == "manga"
  puts "Sorvete de manga é bom"
end 



puts "Escolha uma fruta"
fruta = gets.chomp

if 
  fruta == "morango"
  puts "Suco de morango é bom!"
elsif
  fruta == "manga"
  puts "Sorvete de manga é bom"
elsif 
  puts "#{fruta} parece ótima(o)"
end

# Correção

puts "Digite o nome de uma fruta:"
fruta = gets.chomp

if fruta == "morango"
  puts "Suco de morango é bom!"
elsif fruta == "manga"
  puts "Sorvete de manga é bom!"
else
  puts "#{fruta} parece ótima(o)!"
end


=begin
3 - Escreva um código utilizando while que imprima a frase Estou utilizando while 8 vezes!
=end

exemplo = 0
while exemplo < 8 do
  exemplo += 1
  puts "Estou utilizando while 8 vezes!"
end

# Correção
total = 0

while total < 8 do
  total = total + 1
  puts "Estou utilizando while"
end


=begin
4 - Quantas vezes eu posso dobrar o número 2 (exemplo: 2*2*2*2*2) 
para que o valor fique menos de 10 milhões? (10.000.000)?

NOTA: Usar while
=end

resultado = 2 

while resultado * 2 > 10000 
  end
puts "tantas vezes"

resultado = 10000000
while resultado < 2*2*2*2 do 
  dobra == resultado < 2*2*2*2 
end
puts "#{dobra}tantas vezes"

# Correção

## POSSIVEL RESPOSTA 1
resposta = 1
total = 2

while total < 10000000
  resposta = resposta + 1
  total = total * 2
end

puts resposta - 1 #23


## POSSIVEL RESPOSTA 2
limite = 10000000
total = 2
resposta = 1

while true
  total = total * 2
  if total > limite
    break
  end
  resposta = resposta + 1
end

puts resposta





=begin
5 - DESAFIO

Considerando o código abaixo:

senha = "A4B5"

Escreva um código que pergunte a senha para o usuário.
Enquanto a senha digitada não for igual a senha acima, 
continue perguntando a senha. Quando o usuário descobrir a senha, imprima Senha descoberta!.

DICA: Utilize while e gets
=end

puts "Digite sua senha"
senha = gets.chomp
if senha != "A4B5"
  puts "Qual a sua senha?" 
elsif 
  senha == "A4B5"
  puts "Senha descoberta"
end


puts "Digite sua senha"
senha = gets.chomp
if senha != "A4B5"
  puts "Qual a sua senha?"
  senha = gets.chomp
elsif 
  senha == "A4B5"
  puts "Senha descoberta"
end


puts "Digite sua senha"
senha = gets.chomp
while senha != "A4B5"
  puts "Qual a sua senha?"
  senha = gets.chomp
end
  if senha == "A4B5"
  puts "Senha descoberta"
end

=begin
Nesse caso, você não precisa do "if senha ==" no final.
Veja que seu código cria um loop infinito no while.
Ou seja, enquanto a senha não for A4B5, o seu while vai ficar preso pra sempre.
Dessa forma, você tem 100% de certeza de que quando o while sair da execução, foi pq a senha foi descoberta, 
Então logo depois do end do seu bloco do while, vc pode dar o puts "descobriu a senha".
=end

puts "Digite sua senha"
senha = gets.chomp
while senha != "A4B5"
  puts "Qual a sua senha?"
  senha = gets.chomp
end
  puts "Senha descoberta"

# Correção

 senha = "A4B5"
  senha_digitada = ""

  while senha_digitada != senha
    puts "Digite a senha correta:"
    senha_digitada = gets.chomp
  end
  puts "Senha descoberta!"