=begin
                           Programação Orientada a Objetos
A Programação Orientada a Objetos é um paradigma (regra) do desenvolvimento de softwares 
que considera cada instância de um objeto de forma única de acordo com as suas características e 
colaboram para lidar com softwares grandes e complexos.

Sua estrutura é definida por 04 pilares: Abstração, Encapsulamento, Herança e Poliformismo.

=end
nome = "Rafael"
nome.size # 6
nome.split("") # ["R", "a", "f", "a", "e", "l"]
nome.class # String
nome.object_id # 200

nome = "Rodrigo"
nome.object_id # 220


#Tudo no Ruby são objetos

nome = "Rafael"
nome.size # 6
nome.split("") # ["R", "a", "f", "a", "e", "l"]
nome.class # String
nome.object_id # 200

nome = "Rodrigo"
nome.object_id # 220

# Textos iguais tem IDs diferentes, pois são instâncias diferentes.
"Rafael".object_id
"Rafael".object_id
"Rafael".object_id

                                    #Classe e Instancias
=begin
                                       Classes 
 são o molde para a criação de objetos e definem propriedades e comportamentos. 
                         Objetos
o objeto existe porque o conceito de POO é representar no software as características e comportamentos relevantes dos objetos 
reais ao domínio.
                                       Instância
É a coisa técnica qu permite a existência de um objeto na memória. A instância de uma classe é um novo objeto criado dessa classe,
com o operador .new . Instanciar uma classe é criar um novo objeto do mesmo tipo dessa classe.


  Exemplo:
  Ao modelar um sistema de notas fiscais, as notas e seus itens são objetos e ao codificar o sistema, classes serão declaradas para
  definir esses objetos e para que esses objetos existam na memória serão criadas instâncias dessas classes.

=end

=begin
Escopo das variáveis

* Variável Local: É declarada com a primeira letra de seu nome sendo uma letra minúscula ou sublinhado. Pode ser acessada 
apenas onde foi criada. Por exemplo, se você definir uma variável local dentro de de uma classe ela estará disponível 
apenas dentro desta classe, se a definiu dentro de um método conseguirá acessá-la apenas dentro deste método e assim por 
diante.

Variável Global: Declarada com o prefixo $. Pode ser acessada em qualquer lugar do programa. 
Seu uso é FORTEMENTE DESENCORAJADO pois além de ser visível em qualquer lugar do código, também pode ser alterada em
inúmeros locais ocasionando dificuldades no rastreamento de bugs.

Variável de Classe: É declarada com o prefixo @@. Pode ser acessada em qualquer lugar da classe onde foi declarada e 
seu valor é compartilhado entre todas as instâncias de sua classe. Ao modificar uma variável de classe a alteração 
também é feita no contexto da classe, ou seja, toda vez que o estado da variável for modificado, a alteração se aplica
em todos os resultados que dependem dessa variável.

* Variável de Instância: Seu nome começa com o símbolo @. Semelhante a variável de classe, tendo como única diferença o 
valor que não é compartilhado entre todas as instâncias de sua classe. É utilizada quando se deseja compartilhar seu 
conteúdo com outros métodos, uma vez que a mesma é sempre visível no escopo do objeto, o que permite ao objeto inicializar, 
ler e modificar seu conteúdo, independente de qual método esteja.
**As variáveis de instância não precisam ser criadas no initialize método, mas é assim que você lhes dá um valor inicial.**

As variáveis de instância começam com @ (dentro do método) e sempre que usamos o .new, criamos uma nova instância dela.

VARIÁVEIS LOCAIS (sem o @) só podem ser acessadas com o initialize, mas a VARIÁVEL DE INSTÂNCIA pode ser acessada em 
toda a classe.
  
=end 

class Pizza
end

class Pizza
end

Pizza.new # Cria uma nova instancia da classe Pizza

pizza1 = Pizza.new # Cria uma nova instancia da classe Pizza e atribui pra variável pizza1
pizza1.object_id

pizza2 = Pizza.new # Cria uma nova instancia da classe Pizza e atribui pra variável pizza2
pizza2.object_id

Pizza.new.object_id # Vai sempre ter IDs diferentes, pois são novas instâncias


#Métodos de classe e métodos de instância

# Métodos de classe

class Pizza
  def self.tem_gluten?
    true
  end
end

Pizza.tem_gluten? # true

# Métodos de classe

class Pizza
  def self.nome
    "Pizza de #{sabor}"
  end

  def self.sabor
    "mussarela"
  end
end

Pizza.nome # "Pizza de mussarela"

# Métodos de instância

class Pizza
  def tem_gluten?
    true
  end
end

Pizza.tem_gluten? # (undefined method `tem_gluten?' for Pizza:Class)
Pizza.new.tem_gluten? #true

# Métodos de instância

class Pizza
  def tem_gluten?
    true
  end

  def gluten_info
    if tem_gluten?
      "Tem glúten!"
    end
  end
end

pizza = Pizza.new
pizza.tem_gluten? # true
pizza.gluten_info # Tem glúten!

# Métodos de classe com métodos de instância

class Pizza
  def tipo_de_queijo
    "Mussarela"
  end

  def self.tempo_de_preparo
    5
  end
end

Pizza.tempo_de_preparo # 5
Pizza.tipo_de_queijo # undefined method `tipo_de_queijo`

pizza = Pizza.new # Cria uma instância
pizza.tipo_de_queijo? # Mussarela
pizza.tempo_de_preparo # undefined method `tempo_de_preparo' for #<Pizza:0x00007fdf07942378>)

pizza.class # Pizza
pizza.class.tempo_de_preparo # 5



#Mais exemplos

class Carro
  def self.km_por_litro(km, litros)
    "#{km / litros} km/l"
  end
end

Carro.km_por_litro(125.0, 8.0) # 15.625 km/l




class Carro
  def self.consumo
    12
  end

  def self.calculo_abastecimento(km)
    "Você precisa abastecer #{km / consumo} litros"
  end
end

Carro.calculo_abastecimento(245.0) # "Você precisa abastecer 20.416666666666668 lit


  
class Pessoa
  def gritar (texto = "help")
    "gritando  #{texto}"
  end

  def agradecer (texto = "obrigadinha")
     texto
  end
end

obj1 = Pessoa.new
puts obj1.gritar ("mamacita")
obj1.agradecer ("osbrigueido")


  
=end


#Exercícios
=begin
1 - Considerando o código abaixo:

# Colocar a classe Calculadora aqui em cima!

puts Calculadora.ao_quadrado(3)

Criar uma classe chamada Calculadora e um método chamado ao_quadrado, que calcule o valor quadrado de um número.  
=end


class Calculadora
  def .ao_quadrado?
    true
  end
end

calculadora = Calculadora.new 
calculadora = ao_quadrado * ao_quadrado
puts Calculadora.ao_quadrado(3)



class Calculadora
  def self.ao_quadrado 
    "#{ao_quadrado * ao_quadrado}"
  end
end
puts Calculadora.ao_quadrado(3)


class Calculadora
  def ao_quadrado
    ""
  end
end
calculadora = Calculadora.new
calculadora = (ao_quadrado * ao_quadrado)
puts Calculadora.ao_quadrado(3)


# Correção -----------------------------------------
class Calculadora
  def self.ao_quadrado (numero)
  numero * numero
  end
end
puts Calculadora.ao_quadrado(3)



=begin

2 - Considerando o código abaixo:

# Colocar a classe Carro aqui em cima!

  carro1 = CarroAzul.new
  carro2 = CarroPreto.new
  carro3 = CarroBranco.new

  [carro1, carro2, carro3].each do |carro|
    puts carro.cor
  end

  # Azul
  # Preto
  # Branco

Implemente 3 diferentes classes CarroAzul, CarroPreto, CarroBranco. Essas 3 classes,
 vão ter o mesmo método de instância cor retornando a respectiva cor.
=end

class Carro
  carro1 = CarroAzul.new
  carro2 = CarroPreto.new
  carro3 = CarroBranco.new

  [carro1, carro2, carro3].each do |carro|
    puts carro.cor
  end
end



class Carro
  def CarroAzul
  end
  def CarroPreto
  end
  def CarroBranco
  end
  carro1 = CarroAzul.new
  carro2 = CarroPreto.new
  carro3 = CarroBranco.new

  [carro1, carro2, carro3].each do |carro|
    puts carro.cor
  end
end


class Carro
  class CarroAzul
    def carro1 (cor)
  end
end
  class CarroPreto
    def carro2 (cor)
  end
end
  class CarroBranco
    def carro3 (cor)
  end
end
end

  carro1 = CarroAzul.new
  carro2 = CarroPreto.new
  carro3 = CarroBranco.new

  [carro1, carro2, carro3].each do |carro|
    puts carro.cor
  end

  
class Carro
  class CarroAzul
    def cor (azul)
      "azul"
    end
  end
end

class Carro
  class CarroPreto
    def cor (carro)
      "preto"
    end
  end
end

class Carro
class CarroBranco
  def cor (carro)
   "branco"
  end
  end
end


carro1 = CarroAzul.new
carro2 = CarroPreto.new
carro3 = CarroBranco.new

[carro1, carro2, carro3].each do |carro|
 puts carro.cor
end


#Correção ---------------

  class CarroAzul
  def cor
    "Azul"
  end
end

class CarroPreto
  def cor
    "Preto"
  end
end

class CarroBranco
  def cor
    "Branco"
  end
end

carro1 = CarroAzul.new
carro2 = CarroPreto.new
carro3 = CarroBranco.new

[carro1, carro2, carro3].each do |carro|
  puts carro.cor
end

=begin
3 - Utilizando classes, implementar o exercício 2 da aula 13A, calculando o IMC de cada paciente.
Considerando o código abaixo:

# Colocar a classe Imc aqui em cima!

Imc.calcular(200.2, 1.75, "Mario")
Imc.calcular(65.6, 1.65, "Roberta")
Imc.calcular(79.7, 1.77, "Pedro")
Imc.calcular(35.3, 1.60, "Ana")

Escreva a uma classe Imc que implemente o método calcular que calcula o imc de cada paciente e imprime o resultado.
Nota: Formula do IMC: Peso / (Altura metros * Altura metros)

IMC:
<18.5 - Abaixo do peso
18.5 ~ 24.99 - Normal
> 25 - Acima do peso
> 30 - Obeso
=end

class Imc
  def calcular (peso, altura, nome)
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
end

Imc.calcular(200.2, 1.75, "Mario")
Imc.calcular(65.6, 1.65, "Roberta")
Imc.calcular(79.7, 1.77, "Pedro")
Imc.calcular(35.3, 1.60, "Ana")

#Correção --------------------
class Imc
  def self.calcular(peso, altura, nome)
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
end

Imc.calcular(200.2, 1.75, "Mario")
Imc.calcular(65.6, 1.65, "Roberta")
Imc.calcular(79.7, 1.77, "Pedro")
Imc.calcular(35.3, 1.60, "Ana")


=begin
4 - Utilizando classes, implementar o exercício 3 da aula 13A, para buscar telefones em um agenda telefonica.
Os dados são:
[{nome: "Rafael", telefone: "5566"}, {nome: "Rodolfo", telefone: "9988"}, {nome: "Romário", telefone: "2299"}, {nome: "Ana", telefone: "1634"}, {nome: "Rodrigo", telefone: "9533"}]

Considerando o código abaixo:
# Colocar a classe Agenda aqui em cima!

puts Agenda.dados
puts Agenda.procurar_numero("Rodrigo")
puts Agenda.procurar_numero("Ana")

    Agenda.dados deve retornar o array de dados (disponível acima)

    Agenda.procurar_numero deve retornar o número de uma pessoa na agenda

=end

agenda = [{nome: "Rafael", telefone: "5566"}, {nome: "Rodolfo", telefone: "9988"}, {nome: "Romário", telefone: "2299"}, {nome: "Ana", telefone: "1634"}, {nome: "Rodrigo", telefone: "9533"}]

class Agenda
  def self.dados 
    dados = agenda
  end
def self.procurar_numero(agenda, nome)
  agenda.each do |contato|
     puts contato
     return contato [:telefone] if contato [:nome] == nome
  end
end
end
puts Agenda.dados
puts Agenda.procurar_numero("Rodrigo")
puts Agenda.procurar_numero("Ana")



#Correção

class Agenda
  def self.dados
    [{nome: "Rafael", telefone: "5566"}, {nome: "Rodolfo", telefone: "9988"}, {nome: "Romário", telefone: "2299"}, {nome: "Ana", telefone: "1634"}, {nome: "Rodrigo", telefone: "9533"}]
  end

  def self.procurar_numero(nome)
    dados.each do |contato|
      return contato[:telefone] if contato[:nome] == nome
      end
    end
  end
end

puts Agenda.dados
puts Agenda.procurar_numero("Rodrigo")
puts Agenda.procurar_numero("Ana")