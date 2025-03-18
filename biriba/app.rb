require_relative "pagamento.rb"

include Pagamento

p = Pagamento::Visa.new  #Trabalhando com classes
puts p.pagando

puts PI #Trabalhando com constantes
puts "Digite a bandeira do cartão"
b = gets.chomp

puts "Digite a número do cartão"
n = gets.chomp

puts "Digite a valor da compra"
v = gets.chomp

puts pagar(b,n,v)  #Trabalhando com Métodos