
                                # Métodos
=begin
Forma de organizar funções específicas de um programa.
São ações programáveis que podem ser definidas para facilitar o desenvolvimento do seu projeto e
evitar duplicação do Código caso precise executar a mesma ação mais de 1 vez.

    Para definir um método utiliza-se a palavra reservada def seguida pelo nome do método. 
    Depois é escrito um conjunto de expressões, e por fim, a palavra end determina o término do método.
    Para executar um método basta apenas escrever o seu nome.

Parâmetros: Um método pode depender de um ou mais parâmetros para realizar determinada tarefa. Definindo um valor padrão ao parâmetro, ele torna-se opcional.

Retorno: O retorno de um método ruby é sempre o resultado de sua última instrução.
  
=end

puts("puts também é um método!")



def meu_metodo
end

###

def meu_metodo
  1
  2
  3
end

meu_metodo # Na ausência de um return, retorna o ultimo valor (3)

###

def meu_metodo
  1
  return 2
  3
end

meu_metodo # Retorna o valor (2) por causa do return

valor = meu_metodo # Atribui para uma variável
puts meu_metodo # Imprimi

def meu_metodo
  1
  2
  return 3
  4
  5
end




def dentro_de_um_each
  [1,2,3,4,5,6].each do |numero|
    puts numero
    return numero if numero == 6
  end
end

variavel = dentro_de_um_each
puts "-----"
# 1
# 2
# 3
puts variavel
# 3


def metade_da_soma
 valor = 50 + 50
 valor = valor / 2
 valor
end

puts metade_da_soma # Imprime 50

 # OU

def metade_da_soma
 valor = (50 + 50) / 2
end

puts metade_da_soma # Imprime 50

# OU

def metade_da_soma
 (50 + 50) / 2
end

puts metade_da_soma # Imprime 50



def meu_metodo(parametro)
  return parametro
end

meu_metodo("Rafael") # Retorna o valor do parâmetro ("Rafael")
nome = meu_metodo("Rafael") # Atribui para uma variável
puts meu_metodo("Rafael") # Imprimi




def bom_dia(nome, idioma)
  if idioma == "Portugues"
    puts "Bom dia #{nome}"
  elsif idioma == "Alemao"
    puts "Guten Morgen #{nome}"
  elsif idioma == "Ingles"
    puts "Good morning #{nome}"
  else
    puts "Idioma não suportado"
  end
end

bom_dia("Rafael", "Portugues") # Bom dia Rafael
bom_dia("Klaus", "Alemao") # Guten Morgen Klaus
bom_dia("John", "Portugues") # Bom dia John
bom_dia("Sofia", "Italiano") # Idioma não suportado



# Um método chamando o outro

def valor_com_imposto(valor)
  valor * 1.20
end

def calcular_valor_final(valor)
  if valor < 20
    return valor
  else
    return valor_com_imposto(valor)
  end
end

puts calcular_valor_final(50) # Imprime 60
puts calcular_valor_final(15) # Imprime 15



# Um método chamando o outro

def cor_proibida?(cor)
  if cor == "preto" or cor == "vermelho"
    return true
  else
    return false
  end
end

def puts_cor(cor)
  if cor_proibida?(cor)
    puts "---"
  else
    puts cor
  end
end

puts_cor("branco") # branco
puts_cor("preto") # ---
puts_cor("verde") # verde
puts_cor("azul") # azul
puts_cor("vermelho") # ---



# Recursividade

def fatorial(numero)
  return 1 if numero == 1
  numero * fatorial(numero-1)
end

puts fatorial(4)


=begin
1 - Considerando o código abaixo:

def segundos(minutos)
end

puts segundos(10) # Imprime 600
puts segundos(75) # Imprime 4500

O método segundos recebe um valor em minutos como parametro e retorna esse valor em segundos. 
Escreva o método segundos de forma que ele retorne os valores corretamente, como representado acima.
=end

def segundos(minutos = 1)
  segundos = 60 * minutos
end
puts segundos(10)# Imprime 600
puts segundos(75) # Imprime 4500



def segundos(minutos)
  segundos = 60 * minutos
end
puts segundos(10)# Imprime 600
puts segundos(75) # Imprime 4500


#Correção

def segundos(minutos)
  minutos * 60
end
puts segundos(10)# Imprime 600
puts segundos(75) # Imprime 4500


=begin
2 - Utilizando métodos, implementar o exercício 4 da aula 7A, calculando o IMC de cada paciente.

Considerando o código abaixo:

def imc(peso, altura, nome)
end

imc(200.2, 1.75, "Mario")
imc(65.6, 1.65, "Roberta")
imc(79.7, 1.77, "Pedro")
imc(35.3, 1.60, "Ana")

Escreva a função (método) imc que calcula o imc de cada paciente e imprime o resultado.

Nota: Formula do IMC: Peso / (Altura metros * Altura metros)

IMC:
<18.5 - Abaixo do peso
18.5 ~ 24.99 - Normal
> 25 - Acima do peso
> 30 - Obeso


=end


def imc(peso, altura, nome)
imc = peso / altura * altura

end

imc(200.2, 1.75, "Mario")
imc(65.6, 1.65, "Roberta")
imc(79.7, 1.77, "Pedro")
imc(35.3, 1.60, "Ana")




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




def imc(peso, altura, nome)
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
puts "#{nome} está: #{resultado}" 
end

imc(65.6, 1.65, "Roberta")
imc(79.7, 1.77, "Pedro")
imc(35.3, 1.60, "Ana")
imc(200.2, 1.75, "Mario")

#Correção

def imc(peso, altura, nome)
  imc = peso / (altura * altura)
  if imc > 30
    puts "#{nome} está obeso(a)"
  elsif imc > 25
    puts "#{nome} está acima do peso"
  elsif imc > 18.5 and imc < 24.99
    puts "#{nome} está normal"
  elsif imc < 18.5
    puts "#{nome} está abaixo do peso"
  else
    puts "Algo está errado"
  end
end

imc(200.2, 1.75, "Mario")
imc(65.6, 1.65, "Roberta")
imc(79.7, 1.77, "Pedro")
imc(35.3, 1.60, "Ana")

=begin
3 - Utilizando métodos, implementar o exercício 4 da aula 8A, para buscar telefones em um agenda telefônica.
Considerando o código abaixo:

agenda = [{nome: "Rafael", telefone: "5566"}, 
{nome: "Rodolfo", telefone: "9988"},
{nome: "Romário", telefone: "2299"}, 
{nome: "Ana", telefone: "1634"}, 
{nome: "Rodrigo", telefone: "9533"}]

def procurar_numero(agenda, nome)
end

puts procurar_numero(agenda, "Rodrigo")
puts procurar_numero(agenda, "Ana")

Escreva uma função/método procurar_numero que receba a agenda telefônica e o nome como parâmetro, 
e retorne o telefone.
=end


agenda = [
{nome: "Rafael", telefone: "5566"}, 
{nome: "Rodolfo", telefone: "9988"} , 
{nome: "Romário", telefone: "2299"}]
procurar_por = "Rodolfo"

agenda.each do |contato|
  if contato[:nome] == procurar_por
    puts "Nome: #{contato[:nome]} - Telefone: #{contato[:telefone]}"
    break
  else
    next
  end
  puts "ESSA LINHA NAO VAI SER EXECUTADA NUNCA POR CAUSA DO NEXT/BREAK"
end

agenda = 
[{nome: "Rafael", telefone: "5566"},
 {nome: "Rodolfo", telefone: "9988"}, {nome: "Romário", telefone: "2299"}, 
 {nome: "Ana", telefone: "1634"}, 
 {nome: "Rodrigo", telefone: "9533"}]

def procurar_numero(agenda, nome)
agenda.each do
end
end

puts procurar_numero(agenda, "Rodrigo")
puts procurar_numero(agenda, "Ana")


agenda = [{nome: "Rafael", telefone: "5566"}, 
{nome: "Rodolfo", telefone: "9988"},
{nome: "Romário", telefone: "2299"}, 
{nome: "Ana", telefone: "1634"}, 
{nome: "Rodrigo", telefone: "9533"}]

def procurar_numero(agenda, nome)
  agenda.each do |contato|
    if contato == procurar_numero
      
    end
  end
end
puts procurar_numero
puts procurar_numero(agenda, "Rodrigo")
puts procurar_numero(agenda, "Ana")
 
#Correção

agenda = [{nome: "Rafael", telefone: "5566"}, {nome: "Rodolfo", telefone: "9988"}, {nome: "Romário", telefone: "2299"}, {nome: "Ana", telefone: "1634"}, {nome: "Rodrigo", telefone: "9533"}]

def procurar_numero(agenda, nome)
  agenda.each do |contato|
     puts contato
     return contato [:telefone] if contato [:nome]
  end
end
puts procurar_numero(agenda, "Rodrigo")
puts procurar_numero(agenda, "Ana")


agenda = [{nome: "Rafael", telefone: "5566"}, {nome: "Rodolfo", telefone: "9988"}, {nome: "Romário", telefone: "2299"}, {nome: "Ana", telefone: "1634"}, {nome: "Rodrigo", telefone: "9533"}]

def procurar_numero(agenda, nome)
  agenda.each do |contato|
     puts contato
     return contato [:telefone] if contato [:nome]
  end
end
puts procurar_numero(agenda, "Rodrigo")
puts procurar_numero(agenda, "Ana")
