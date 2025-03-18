exemplo = {}

exemplo = {nome: "Rafael", idade: 30}
# exemplo [:idade]

puts "Meu nome é #{exemplo[:nome]} e tenho #{exemplo[:idade]} anos"




exemplo = { :a => 2}
puts exemplo[:a]

exemplo = { a: 3 }
puts exemplo[:a]

exemplo = { "a" => 2}
puts exemplo["a"]




exemplo = {}
exemplo["teste1"] = 1
exemplo[:teste2] = 2
puts "#{exemplo}" #{"teste1"=>1, :teste2=>2}
puts exemplo["teste1"] # 1
puts exemplo[:teste1] # não existe na lista exemplo

puts exemplo[:teste2] # 2
puts exemplo["teste2"] # não existe na lista exemplo

exemplo = { "teste1" => 1, :teste2 => 2}


exemplo = {}
exemplo[:teste] = 1
puts "#{exemplo}" #{:teste=>1}





exemplo = {}
exemplo[:lista] = []

exemplo[:lista] << "Morango"
exemplo[:lista] << "Banana"

exemplo[:nome] = "Compras"
 puts "#{exemplo [:nome]} - #{exemplo [:lista]}"


exemplo = {}
exemplo[:lista] = []

exemplo[:lista] << "Morango"
exemplo[:lista] << "Banana"

exemplo[:nome] = "Compras"
 puts "#{exemplo [:nome]} - #{exemplo [:lista]}"





exemplo = {nome: "Rafael", preferencias: ["Vermelho", "Preto"]}


puts exemplo[:nome]
puts "#{exemplo [:preferencias]}" # Array ["Vermelho", "Preto"]
puts exemplo[:preferencias][0] #         0         1





exemplo = [{ nome: "Rafael", idade: 30}, 
         {nome: "Roberto", idade: 40}]

exemplo = []
exemplo << { nome: "Rafael", idade: 30}
exemplo << {nome: "Roberto", idade: 40}
exemplo << {nome: "ana", idade: 50}

puts exemplo[0][:nome]
puts exemplo[0][:idade]
puts exemplo[1][:nome]
puts exemplo[1][:idade]


#Exercícios -----------------------------------------------------

=begin
  Criar um hash que contenha uma chave chamada frutas com um array vazio e
   uma chave chamada verduras com um array vazio. Utilizando o << adicione no array correto (fruta ou verdura)
   os valores: banana, cenoura, uva, brocolis Imprima a lista no final.
  
=end

exemplo = {}
exemplo [:frutas] =  []
exemplo [:frutas] << "Banana" 
exemplo [:frutas] << "Uva" 



exemplo1 = {}
exemplo1 [:verduras] =  []
exemplo1 [:verduras] << "Cenoura" 
exemplo1 [:verduras] << "Brócolis" 


puts exemplo [:frutas]
puts exemplo1 [:verduras]



exemplo = {}
exemplo [:frutas] = []
exemplo [:frutas] << "Morango"
exemplo [:frutas] << "Pêra"
exemplo [:frutas] << "Abacate"


exemplo1 = {}
exemplo1 [:Verduras] = []
exemplo1 [:Verduras] << "Batata"
exemplo1 [:Verduras] << "Beterraba"
exemplo1 [:Verduras] << "Cebola"
exemplo1 [:Verduras] << "Beringela"

puts "#{exemplo [:frutas]}"
puts "#{exemplo1 [:Verduras]}"
puts exemplo [:frutas]
puts exemplo1 [:Verduras]

=begin
 Criar e imprimir uma lista de compras com produtos de mercado, para duas pessoas diferentes, 
 utilizando um único hash para armazenar os dados. Imprimir a lista de cada pessoa. 
 Exemplo Rafael vai comprar: ["produto1", "produto2"] Roberto vai comprar: ["produto3", "produto4"]
=end


compras = {roberto:[], paulo:[]}
compras [:roberto] << "sabonete"
compras [:roberto] << "desentupidor"
compras [:paulo] << "detergente"
compras [:paulo] << "amaciante"

puts 




=begin
 considerando o hash abaixo:

exemplo = {
  fora1: {
    dentro1: "1"
  }
}

Adicionar ao hash exemplo uma nova chave fora2 que contenha a chave dentro2 com valor 2.

Imprima o hash exemplo no final: {:fora1=>{:dentro1=>"1"}, :fora2=>{:dentro2=>"2"}}
=end


#Correção --------------------------------------------------------------

=begin
  Criar um hash que contenha uma chave chamada frutas com um array vazio e
   uma chave chamada verduras com um array vazio. Utilizando o << adicione no array correto (fruta ou verdura)
   os valores: banana, cenoura, uva, brocolis Imprima a lista no final.
  
=end

lista = { frutas:[], verduras:[] }
lista [:frutas] << "banana"
lista [:frutas] << "morango"
lista [:frutas] << "pêra"

lista [:verduras] << "cenoura"
lista [:verduras] << "brócolis"

puts lista


=begin
  Criar uma hash simples contendo 3 chaves principais (:a, :b, “c”). 
  :a deve conter um texto. :b deve conter um número. 
  "c" deve um float. Imprimir o valor das chaves a,b,c separadamente em cada linha.

  
=end

 exemplo = { a: "Kimberly", b: 27, "c" => 50.00}

 puts exemplo [:a]
 puts exemplo [:b]
 puts exemplo ["c"]

=begin
  exemplo = {
  a: "cinquenta",
  b: "dez",
  c: [0,1,2,3,4,5,6,7,8,9]
}

  Utilizando o hash acima, imprima na tela o texto cinquenta - 50 e em outra linha dez - 10.

NOTA: Você deve utilizar os numeros do array de 0 a 9 para formar o 50 e o 10.
=end



 exemplo = { a: "cinquenta", b: "dez", c: [0,1,2,3,4,5,6,7,8,9]}

puts "#{exemplo [:a]} - #{exemplo [:c][5]} #{exemplo [:c][0]}"
puts "#{exemplo [:b]} - #{exemplo [:c][1]} #{exemplo [:c][0]}"


=begin
 Criar e imprimir uma lista de compras com produtos de mercado, para duas pessoas diferentes, 
 utilizando um único hash para armazenar os dados. Imprimir a lista de cada pessoa. 
 Exemplo Rafael vai comprar: ["produto1", "produto2"] Roberto vai comprar: ["produto3", "produto4"]
=end



 lista_compras = { rafael: ["banana", "morango"], carlos: [ "laranja", "abacaxi"]}

 puts "Rafael vai comprar #{lista_compras[:rafael]}"
 puts "Carlos vai comprar #{lista_compras [:carlos]}"

 #OU

lista_compras = {}
lista_compras [:rafael] = []
lista_compras [:carlos] = []

lista_compras [:rafael] << "banana"
lista_compras [:rafael] << "morango"

lista_compras [:carlos] << "laranja"
lista_compras [:carlos] << "abacaxi"

puts "Rafael vai comprar #{lista_compras[:rafael]}"
 puts "Carlos vai comprar #{lista_compras [:carlos]}"




=begin
 considerando o hash abaixo:

exemplo = {
  fora1: {
    dentro1: "1"
  }
}

Adicionar ao hash exemplo uma nova chave fora2 que contenha a chave dentro2 com valor 2.

Imprima o hash exemplo no final: {:fora1=>{:dentro1=>"1"}, :fora2=>{:dentro2=>"2"}}
=end

exemplo = {
  fora1: {
    dentro1: "1"
  }
}
exemplo [:fora2] = {}
exemplo [:fora2] [:dentro2] = "2"
puts exemplo


#OU
exemplo = {fora1: { dentro1: "1"}}
exemplo [:fora2] = { dentro2: "2"}

puts exemplo

=begin
  Considerando o hash abaixo:

exemplo = {
  fora1: {
    dentro1: "1"
  }
}

Adicionar ao hash exemplo uma nova chave fora2 que contenha a chave dentro2 com valor 2.

Imprima o hash exemplo no final: {:fora1=>{:dentro1=>"1"}, :fora2=>{:dentro2=>"2"}}


=end
 

exemplo = {fora1: { dentro1: "1"}}
exemplo [:fora2] = { dentro2: "2"}

puts exemplo