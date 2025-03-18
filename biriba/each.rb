
=begin
  o EACH, tem como função varrer um array ou hash de elemento por elemento da lista
=end


["Rafael", "Roberto"].each do |nome|
  puts nome
end

exemplo = [1,2,3]
exemplo.each do |numero|
  puts numero * 10
end


{ a: 1, b: 2, c: 3 }.each do |chave, valor|
  puts "a chave #{chave} tem o valor #{valor}"
end

exemplo = { valor: 10, taxa: 20 }
exemplo.each do |chave, valor|
  puts "a chave #{chave} tem o valor #{valor}"
end



exemplo = [{nome: "Rafael"}, {nome: "Roberto"}]
exemplo.each do |pessoa|
  puts "Oi #{pessoa[:nome]}!"
end




exemplo = { compras: [10,20,30] }
total = 0
exemplo[:compras].each do |compra|
  total = total + compra
end
puts total


[10].each do |compra|
  total = total + compra
end
[20].each do |compra|
  total = total + compra
end
[30].each do |compra|
  total = total + compra
end


#ou 

exemplo = { compras: [10,20,30] }
total = 0

  total = total + 10
  total = total + 20
  total = total + 30
puts total

=begin
O break serve pra parar de acessar o EACH quando determinada ordem for dada, ele para a execução!!!
=end

exemplo = [1,2,3,4,5,6]
exemplo.each do |numero|
  puts numero
  if numero > 3
    puts "Break!"
    puts "aaaaaaaaaa"
   break
  end
end
# 1
# 2
# 3
# 4
# Break!
puts "acabou"

=begin
  NEXT pula a execução quando a ordem for dada. 
=end

exemplo = ["Rafael", "Roberto", "Rafael", "Rafael", "Rodolfo"]
exemplo.each do |nome|
  if nome == "Rafael"
    next
  else
   puts nome
  end
end
# Roberto
# Rodolfo


=begin 
Exercícios -----------------------------------------------------
1 - Considerando essa lista abaixo, escreva um programa que imprima individualmente cada peso da lista
 em gramas ao invés de kilos. (DICA: 1kg = 1000g)
peso_em_kilos = [10,23,44,95]
=end


kg = [10,23,44,95]
kg.each do |peso|
  puts peso * 1000 
end

                      # RESPOSTA acertei a resposta e troquei a variavel por kg

peso_em_kilos = [10,23,44,95]
peso_em_kilos.each do |peso|
  puts peso * 1000 
end

=begin
2 - Utilizando o código com a variável abaixo, escreva um programa que imprima a messagem: 
“Oi, nome!”, onde nome seja cada nome individualmente da lista acima! (DICA: Utilize .split)
lista = "Rafael!Roberto!Rodolfo!Marcos!Rodrigo!Jorge!Lucas!Carlos!Dario!Ronaldo!Luis!Moises!Tulio!Armando!Beto!Mathias"
=end 

lista = "Rafael!Roberto!Rodolfo!Marcos!Rodrigo!Jorge!Lucas!Carlos!Dario!Ronaldo!Luis!Moises!Tulio!Armando!Beto!Mathias"

lista_de_nomes = lista.split ("!")
lista_de_nomes.each do |nomes|
  puts "Olá #{nomes}!"
end

                                  # OPCAO DE RESPOSTA 1
nomes = lista.split("!")
nomes.each do |nome|
  puts "Oi, #{nome}!"
end

                                  # OPCAO DE RESPOSTA 2
lista.split("!").each do |nome|
  puts "Oi, #{nome}!"
end

=begin 
3 - Utilizando o código com a variável abaixo, escreva um programa que calcule e imprima o resultado da 
soma de a + c + e ? (DICA: Você talvez precise criar uma variável soma com o valor inicial zero,
 para ir somando os valores desejados. NOTA: Você deve usar o .each e next )

exemplo = {a: 1, b: 2, c: 3, d: 7, e: 9}
=end

exemplo = {a: 1, b: 2, c: 3, d: 7, e: 9}
soma = 0
exemplo.each do |chave,valor|
puts chave
end


                                    # RESPOSTA

exemplo = {a: 1, b: 2, c: 3, d: 7, e: 9}
soma = 0
exemplo.each do |chave, valor|
  if chave == :b or chave == :d
    next
  end
  soma = soma + valor
end
puts soma
# 13

=begin
4 - Utilizando o código com a variável abaixo, considerando a pessoa selecionada na variável procurar_por, 
imprima o nome e telefone desse contato. (NOTA: Você deve usar o .each e next e break)


agenda = [{nome: "Rafael", telefone: "5566"}, {nome: "Rodolfo", telefone: "9988"}, {nome: "Romário", telefone: "2299"}]
procurar_por = "Rodolfo"
=end 



agenda = [
{nome: "Rafael", telefone: "5566"}, 
{nome: "Rodolfo", telefone: "9988"},
{nome: "Romário", telefone: "2299"}]
procurar_por = "Rodolfo"

agenda.each do |pessoa|
  if pessoa
end


                                    #RESPOSTA

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

=begin 

5 - DESAFIO

Utilizando o código com a variável abaixo, considerando as variáveis acima, escreva um programa que
 imprima em linhas diferentes todas as opções possíveis de carne e ponto.
 Exemplo: “picanha mal passada” “picanha ao ponto” “picanha bem passada” … (NOTA: Você deve usar o .each)

carnes = ["picanha", "costela", "alcatra", "maminha"]
pontos = ["mal passada", "ao ponto", "bem passada"]
=end


carnes = ["picanha", "costela", "alcatra", "maminha"]
pontos = ["mal passada", "ao ponto", "bem passada"]

carnes.each do |carne|
  puts carne
  end

pontos.each do |ponto|
  puts ponto
end

puts "#{carne} #{ponto}"


                               # RESPOSTA

carnes = ["picanha", "costela", "alcatra", "maminha"]
pontos = ["mal passada", "ao ponto", "bem passada"]

carnes.each do |carne|
  pontos.each do |ponto|
    puts "#{carne} #{ponto}"
  end
end
