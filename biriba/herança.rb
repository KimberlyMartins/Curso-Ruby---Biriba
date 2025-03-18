=begin
	
                                                      Herança

Para herdar características de outra classe, adicione na frente do nome de uma classe filha o símbolo de menor e depois o 
nome da classe pai.

class ClasseFilha < ClassePai
end


Para herdar os métodos e atributos de uma classe já existente você apenas assinala com o sinal de < (o sinal de menor quê)
juntamente com o nome da classe pai.

class Supernome < Nome

    # método que escreve o nome completo de outra forma
    def escreve_nome_completo
        @sobrenome.upcase+", "+@nome
    end

end

Neste caso estou aproveitando toda a estrutura existente da classe Nome e mudando apenas um dos métodos para retornar um 
valor de um jeito diferente. Ah sim, o método #upcase serve para colocar o conteúdo da string em caixa alta.
	
=end

class Pai
  attr_accessor :nome
  def falar(texto = "Alo!")
    texto
  end
end

class Filha < Pai
end

p = Pai.new
p.nome = "Kim"
puts p.nome
puts p.falar
puts "_______________"

f = Filha.new
f.nome = "Gabriel"
puts f.nome
puts f.falar ("Heyy")

#---------------------------------------

class Funcionario
  attr_accessor :nome, :cpf, :salario
end
class Gerente < Funcionario
  attr_accessor :senha, :tempo_empresa
end

f = Funcionario.new
f.nome = "Kimberly"
f.cpf = 90909
f.salario = 1.0000
puts "Funcionário"
puts f.nome
puts f.salario
puts f.cpf
puts "----------"

g = Gerente.new
puts "Gerente"
g.nome = "Gabriel"
g.cpf = 986754
g.salario = 5.000
g.tempo_empresa = 5
g.senha = 876

puts g.nome
puts g.salario
puts g.cpf
puts g.senha
puts g.tempo_empresa



#-----------------------

class Carro
  def rodas
    4
  end
  def portas
    5
  end
end

class Corsa < Carro
end

meu_carro = Corsa.new
#meu_carro.rodas ---- irb imprime 4
#meu_carro.portas ----- irb imprime 5
puts meu_carro.portas
puts meu_carro.rodas




class Carro
  def rodas
    4
  end

  def portas
    5
  end
end

class Corsa < Carro
  def cor
    "vermelho"
  end
end

meu_carro = Corsa.new
meu_carro.rodas
meu_carro.portas
meu_carro.cor

c = Carro.new
c.rodas
c.portas
c.cor
puts c.cor




class Carro
  def rodas
    4
  end
end

class Corsa < Carro
  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end
end

meu_carro = Corsa.new("corsinha da hora")
meu_carro.rodas # 4
meu_carro.nome # "corsinha"

puts meu_carro.rodas
puts meu_carro.nome



=begin
                                       Override

Métodos Override (reescrever) é um recurso que permite que uma subclasse ou classe filha possa fornecer uma implementação
específica de um método que já é fornecido por uma de suas superclasses ou classes pai.
A implementação Override das subclasses substitui a implementação na superclasse, fornecendo um método que tem o mesmo 
nome, mesmos parâmetros ou assinatura, e mesmo tipo de retorno como o método na classe pai.
  
=end

class Animal
  def self.som
    "Grrrr"
  end
end

class Cachorro < Animal
end

Animal.som # Grrrr
Cachorro.som # Grrrr


class Animal
  def self.som
    "Grrrr"
  end
end

class Cachorro < Animal
  def self.som
    "Au au"
  end
end

puts Animal.som # Grrrr
puts Cachorro.som # Au Au

#---------------------------------

class Pizza
  attr_reader :sabor, :preco

  def initialize(sabor, preco)
    @sabor = sabor
    @preco = preco
  end
end

class Mussarela < Pizza 
end
=begin

class Mussarela < Pizza  
 def initialize(sabor, preco)     # Erro pois a herança também herda o initialize com 2 parâmetros
    @sabor = sabor
    @preco = preco
   end
end
=end
                         
pizza1 = Mussarela.new   #ArgumentError (wrong number of arguments (given 0, expected 2))


class Pizza
  attr_reader :sabor, :preco

  def initialize(sabor, preco)
    @sabor = sabor
    @preco = preco
  end
end

class Mussarela < Pizza

  # Override
  def initialize
  end
end

pizza1 = Mussarela.new
pizza1.sabor # nil
pizza1.preco # nil
# Sabor e preco vazios, pois o método de initialize foi sobrescrito e com isso não está inicializando as variáveis


class Pizza
  attr_reader :sabor, :preco

  def initialize(sabor, preco)
    @sabor = sabor
    @preco = preco
  end
end

class Mussarela < Pizza

  # Override
  def initialize(preco)
    @sabor = "mussarela"  # variáveis de instância tambem sao herdadas
    @preco = preco
  end
end

pizza1 = Mussarela.new(35)
pizza1.sabor # mussarela
pizza1.preco # 35


class Pizza
  attr_reader :sabor, :preco

  def initialize(sabor, preco)
    @sabor = sabor
    @preco = preco
  end
end

class Pepperoni < Pizza

  # Override
  def initialize(preco)
    @sabor = "Pepperoni com abacaxi"
    @preco = preco
  end
end

pizza1 = Pepperoni.new(40)
puts pizza1.sabor # mussarela
puts pizza1.preco


                                        
=begin
                                            Método super
Super impede o método de sobrepor. Ao incluir super no método filho, o método pai é puxado para o método da criança e 
ambos são executados.
Chama o método da classe pai
=end

class Pizza
  attr_reader :sabor, :preco

  def initialize(sabor, preco)
    @sabor = sabor
    @preco = preco
  end
end

class Mussarela < Pizza
  def initialize(preco)
    super("mussarela", preco)
  end
end

pizza1 = Mussarela.new(35)
puts pizza1.sabor # mussarela
puts pizza1.preco # 35




class PizzaBasica
  def self.preco
    35
  end
end

class PizzaCalabreza < PizzaBasica
  def self.preco
    # super chama o método preco da classe acima "PizzaBasica" e retorna o valor
    super + 5
  end
end

puts PizzaBasica.preco # 35
puts PizzaCalabreza.preco # 40






=begin                            Require e Require relative
  
É uma best practice do ruby de criar uma classe em arquivos ruby separados. Isso contribui para que o código fique 
organizado.

Utilizando require é possível espalhar o código em arquivos diferentes ruby, e no topo de cada arquivo, podemos dar 
require daquele arquivo que precisamos.

require: Usado para bibliotecas (gems) ou para requerer arquivos. Necessário passar o caminho completo, exemplo: 

            require "/home/kim/biriba/pasta/carro.rb"

require_relative: Uma forma alternativa para requerer um arquivo local, não precisando passar o caminho completo. 
Se o arquivo estiver na mesma pasta, basta fazer require_relative 'meu_arquivo.rb', exemplo:

            require_relative "carro.rb"

=end

# carro.rb

class Carro
  def self.rodas
    4
  end
end

# fusca.rb

require_relative "carro.rb"

class Fusca < Carro
end

puts Fusca.rodas

  
=end



=begin
  
1.


Considerando o código abaixo:

class Bicicleta
  def rodas
    2
  end

  def motorizada
    false
  end
end

Escreva uma classe BicicletaEletrica que extende Bicicleta, sobrescrevendo o método motorizada para retornar true, 
de forma que o código abaixo funcine com a nova classe BicicletaEletrica.

minha_bike_normal = Bicicleta.new
minha_bike_normal.rodas # 2
minha_bike_normal.motorizada # false

minha_bike = BicicletaEletrica.new
minha_bike.rodas # 2
minha_bike.motorizada # true
=end
class Bicicleta
  def rodas
    2
  end

  def motorizada
    false
  end
end

class BicicletaEletrica < Bicicleta
  def motorizada 
    true
  end
end

minha_bike_normal = Bicicleta.new
puts minha_bike_normal.rodas # 2
puts minha_bike_normal.motorizada # false

minha_bike = BicicletaEletrica.new
puts minha_bike.rodas # 2
puts minha_bike.motorizada # true





=begin
2. Considerando o código abaixo:

class Carro
  def lugares
    2
  end

  def combustivel
    "gasolina"
  end
end

Implemente uma classe CorsaFlex que extende de carro. O CorsaFlex possui 4 lugares (ao invés de 2). E funciona com 
gasolina e alcool.

NOTA: Utilizar super nesse exercício.

carro = CorsaFlex.new
carro.lugares # 4
carro.combustivel # gasolina e alcool

=end


#SEM USAR SUPER 

class Carro
  def lugares
    2
  end

  def combustivel
    "gasolina"
  end
end

class CorsaFlex
  def lugares
    4
  end
  def combustivel
    "Alcool e Gasolina"
  end
end

carro = CorsaFlex.new
puts carro.lugares # 4
puts carro.combustivel # gasolina e alcool


# USAR SUPER

#erro
class Carro
  def lugares
    2
  end
  def combustivel
    "gasolina"
  end
end

class CorsaFlex < Carro
  def 
    super (4; "Gasolina e alcool") #syntax error, unexpected integer literal, expecting ';' or '
  end
end

carro = CorsaFlex.new
puts carro.lugares # 4        untitled.rb:40: syntax error, unexpected `end'
puts carro.combustivel # gasolina e alcool


#ERRO
class Carro
  def lugares
    2
  end
  def combustivel
    "gasolina"
  end
end
class CorsaFlex < Carro
  def super
    @lugares = 4 
    @combustivel = "Gasolina e alcool"
  end
end

carro = CorsaFlex.new
puts carro.lugares # 4   imprimiu 2 e gasolina (os do super)
puts carro.combustivel


class Carro
  def lugares
    2
  end
  def combustivel
    "gasolina"
  end
end
class CorsaFlex < Carro
  def super
    lugares = 4 
    combustivel = "Gasolina e alcool"
  end
end

carro = CorsaFlex.new
puts carro.lugares # 4  imprimiu 2 e gasolina (os do super)
puts carro.combustivel

#ERRO
class Carro
  def lugares
    2
  end
  def combustivel
    "gasolina"
  end
end
class CorsaFlex < Carro
  def super(4,"Gasolina e alcool")
  end
end

carro = CorsaFlex.new
puts carro.lugares # 4
puts carro.combustivel

#ERRO
class Carro
  def lugares
    2
  end
  def combustivel
    "gasolina"
  end
end
class CorsaFlex < Carro
  def initialize
    super 
  end
end  

carro = CorsaFlex.new(4,"Alcool") 
puts carro.lugares # 4 initialize': wrong number of arguments (given 2, expected 0)
puts carro.combustivel

# ERRO 
class Carro
  def lugares
    2
  end
  def combustivel
    "gasolina"
  end
end
class CorsaFlex < Carro
  def initialize
    super (4,"Alcool")
  end
end  

carro = CorsaFlex.new(4,"Alcool")
puts carro.lugares # 4
puts carro.combustivel

#ERRO
class Carro
  def lugares
    2
  end
  def combustivel
    "gasolina"
  end
end
class CorsaFlex < Carro
  def lugares
   super + 2
  end
  def combustivel
    super + "Gasolina e Alcool" #gasolinaGasolina e Alcool
  end
end  


carro = CorsaFlex.new
puts carro.lugares # 4
puts carro.combustivel


#           Correção 

class Carro
  def lugares
    2
  end

  def combustivel
    "gasolina"
  end
end

class CorsaFlex < Carro
  def lugares
    super + 2
  end
  def combustivel
    super + " e alcool"
  end
end

carro = CorsaFlex.new
puts carro.lugares # 4
puts carro.combustivel # gasolina e alcool


#           OU

class Carro
  def lugares
    2
  end
  def combustivel
    "Gasolina"
  end
end
class CorsaFlex < Carro
  def lugares
   super + 2
  end
  def combustivel
   "#{super} e Alcool"
  end

end  

carro = CorsaFlex.new
puts carro.lugares # 4
puts carro.combustivel
