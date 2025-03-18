=begin
                                    Construção de objetos
Toda vez que o método .new é chamado, ele cria o objeto e chama o metodo INITIALIZE da classe para que o objeto possa ser
configurado. O método construtor tem por finalidade instanciar um novo objeto e fornecer ou não valores iniciais para as 
suas variáveis de instância. Enquanto não atribuirmos valor para nenhum ds atributos, eles estão vazios, com valores nulos,
que no Ruby é representado pelo nil.

*** Instância é um nome mais chique para objeto e criar um objeto pode ser chamado de instanciar.  
=end
=begin
                              Métodos de Acesso
Getters e setters servem para você manipular atributos do objeto (atributos são informações sobre objeto).
Setters servem para atribuir valores aos atributos do objeto que são guardadas em variáveis de instâncias (sempre começam
com @) e getters leem os valores dessas variáveis nos permitindo acessa-los sempre que necessário.

Em ruby, podemos usar alguns métodos nos nossos objetos para poupar linhas ao escrever nossos getters e setters:
  attr_accessor que cria os métodos de leitura (getter) e escrita (setter) para um determinado atributo.
  attr_writer: cria apenas o método de escrita (setter) para um determinado atributo, Você pode querer um valor para fazer 
  alguma operação com ele e retorna-lo de uma forma diferente.
  attr_reader: cria apenas o método de leitura (getter) para um determinado atributo.

Com o reader você só pode ler o valor mas não pode altera-lo, writer só alterar mas não ler,já o accessor faz ambos.

=end
class Animal
  attr_accessor :nome
  attr_accessor :espécie
 def initialize (n,e)
 @nome = n
 @espécie = e
 end
end

pet = Animal.new("Totó","Cachorro")
puts pet.nome
puts pet.espécie

#-------------------------------

class Animal
  attr_reader :nome
  attr_writer :nome
  attr_accessor :espécie
  attr_accessor :raça

 def initialize (n,e,r)
 @nome = n
 @espécie = e
 @raça = r
 end
end

pet = Animal.new("Kiwi","Coelha","Miniloop")
puts "Qual o nome do seu animal de estimação?"
pet.nome = gets.chomp()
puts "Qual a espécie do seu pet"
pet.espécie =  gets.chomp()
puts "Qual a raça do seu pet?"
pet.raça = gets.chomp()

#irb ----------------------------------------------

class Carne
  def initialize(nome, pontos)
    @nome = nome
    @pontos = pontos
  end

  def lista_de_opcoes
    lista = []
    @pontos.each do |ponto|
      lista << "#{@nome} #{ponto}"
    end
    lista
  end
end

picanha = Carne.new("picanha", ["ao ponto", "bem passado"])
picanha.lista_de_opcoes



class Animal
  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end

  def comunicar
    puts "Olá eu sou a classe mãe ou super classe"
  end
end

class Cachorro < Animal
  attr_reader :raça
  def initialize(nome,raça)
    super(nome)
    @raça = raça
  end

  def comunicar
      puts "AUAU = eu sou a classe filha"
   end 
end


bob = Cachorro.new("Bob", "Poodle")
puts bob.nome
puts bob.raça
bob.comunicar

class Animal
  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end

  def comunicar
    puts "Olá eu sou a classe mãe ou super classe"
  end
end

class Cachorro < Animal
  attr_reader :raça
  def initialize(nome,raça)
    super(nome)
    @raça = raça
  end
    def comunicar
      puts "AUAU = eu sou a classe filha"
   end 
end




class Gato < Animal
  attr_reader :raça
  def initialize(nome,raça)
    super(nome)
    @raça = raça
  end

  def comunicar
    puts "Miauuuuu, classef filha"
  end
end

bob = Cachorro.new("Bob", "Poodle")
puts bob.nome
puts bob.raça
bob.comunicar
puts "-------------------"
miau = Gato.new("Meow", "Siamês")
puts miau.nome
puts miau.raça
miau.comunicar

#-------------------

class Livro
  attr_reader :nome, :ano, :preço

  def initialize(nome,ano,preço)
    @nome = nome
    @ano = ano
    @preço = preço
  end

  def mostrar_dados
    puts "Livro: #{@nome}, Ano de lançamento: #{@ano}, Preço: #{@preço}"
  end

  def dar_desconto
    if @ano < 2000
      @preço = @preço * 0.9
    else
      @preço
    end
  end
end

l1 = Livro.new("O Senhor dos Anéis", 1999, 50.00)
l1.dar_desconto 
l1.mostrar_dados


class Livro
  attr_reader :nome, :ano, :preço

  def initialize(nome,ano,preço)
    @nome = nome
    @ano = ano
    @preço = dar_desconto(preço)
  end

  def mostrar_dados
    puts "Livro: #{@nome}, Ano de lançamento: #{@ano}, Preço: #{@preço}"
  end

private
  def dar_desconto(preço)
    if @ano < 2000
      preço * 0.9
    else
      preço
    end
  end
end

l1 = Livro.new("O Senhor dos Anéis", 2000, 50.00)

#l1.dar_desconto 
l1.mostrar_dados

#---------------- Calculadora 
class Calculadora
def somar(x,y)
  return x + y
end
end


cal = Calculadora.new
resultado = cal.somar(5,9,)
puts resultado

class Calculadora
def diminuir(x,y)
  return x - y
end
end


cal = Calculadora.new
resultado = cal.diminuir(5,9)
puts resultado


class Calculadora
def divisao(x,y)
  return x / y
end
end


cal = Calculadora.new
resultado = cal.divisao(10,5)
puts resultado


class Calculadora
def multiplicar(x,y)
  return x * y
end
end


cal = Calculadora.new
resultado = cal.multiplicar(5,2)
puts resultado


# ------------ attr 
class Carro
  attr_accessor :marca, :modelo
  def velocidade_maxima
    250
  end
  def descrição
    "Marca: #{marca} e Modelo: #{modelo}"
  end
end

carro = Carro.new
carro.marca = "Mitsubishi"
carro.modelo = "Lancer"
puts "Marca: #{carro.marca}" 
puts "Modelo: " + carro.modelo
puts "Descrição: " + carro.descrição

# ------------initialize
class Carro
  attr_accessor :marca, :modelo

  def initialize(modelo,marca)
    @modelo = modelo
    @marca = marca
  end
end

carro = Carro.new("Model S","Tesla")
puts carro.modelo
puts carro.marca


#Curso udemy
=begin
1 - O cachorro recebe a raça e o nome da inicialização.Não é permitido trocara raça do cachorro depois de inicializado o 
objeto. O cachorro pode latir "au au!" por padrão ou personalizado através de parâmetro.Teste ao menos 2 objetos.
=end


class Cachorro
  attr_reader :raça
  attr_accessor :nome

  def initialize (nome,raça)
    @nome = nome
    @raça = raça
  end

  def latir ("auau")
    @latir = latir
  end
end



bulldog = Cachorro.new 
bulldog.latir

puts bulldog




class Cachorro
  attr_reader :raça
  attr_accessor :nome

  def initialize (nome,raça)
    @nome = nome
    @raça = raça
  end

  def latir (latido = "auau")
    latido
  end
end

cão1 = Cachorro.new ("Colossal","São Bernardo")
cão1.latir= (auuuuuuuuuuuu) #erro do auuuuuuu

puts "#{nome} #{raça} #{latir}" #ficou tudo grudado


#                                         Correção

class Cachorro
  attr_reader :raça
  attr_accessor :nome

  def initialize (nome,raça)
    @nome = nome
    @raça = raça
  end

  def latir (latido = "auau")
    latido
  end
end

cão1 = Cachorro.new("Colossal","São Bernardo")
cão2 = Cachorro.new("Pastor", "Bernese")

puts cão1.nome
puts cão1.raça
puts cão1.latir
puts "--------------"
puts "Nome: #{cão2.nome}, Raça: #{cão2.raça}, Barulho: #{cão2.latir}"

=begin
2 - O papagaio é inicializado com nome e idade. Os dois podem ser alterados após a inicialização. O método repetir_frase
deve usar um parâmetro com a frase a ser repetida. Caso não seja passado parâmetro, o papagaio deve dizer "curupaco!".
Teste com ao menos 2 objetos.
=end

class Papagaio
  attr_accessor :nome :idade

  def initialize (nome,idade)
    @nome = nome
    @idade = idade
  end

  def repetir_frase (fala = "Curupaco")
    fala
  end
end

papagaio1 = Papagaio.new("Jubileu","5 anos")
papagaio2 = Papagaio.new("Marilene", "40 anos")



class Papagaio
  attr_accessor :nome 
  attr_accessor :idade

  def initialize (nome,idade)
    @nome = nome
    @idade = idade
  end

  def repetir_frase (fala = "Curupaco")
    fala 
  end
end

papagaio1 = Papagaio.new ("Jubileu","5 anos")
papagaio1.repetir_frase "Acorda menina"

papagaio2 = Papagaio.new ("Marilene","40 anos")

puts papagaio1.nome



# -----------------Correção

class Papagaio
  attr_accessor :nome 
  attr_accessor :idade
  attr_accessor :repetir_frase

  def initialize (nome,idade)
    @nome = nome
    @idade = idade
  end

  def repetir_frase (fala = "Curupaco")
    fala 
  end
end

papagaio1 = Papagaio.new("Jubileu","5 anos")
papagaio2 = Papagaio.new("Marilene","40 anos")

puts "Qual o nome do seu papagaio?"
puts "#{papagaio1.nome}, #{papagaio1.idade}, diz: #{papagaio1.repetir_frase}"

puts "----------------------------"
puts "Qual o nome do seu papagaio?"
puts "#{papagaio2.nome}, #{papagaio2.idade}, diz: #{papagaio2.repetir_frase("Acorda menina!")}"



=begin
                                          Biriba Exercícios
1.

Utilizando attr_reader e/ou attr_writer e/ou attr_accessor sempre que puder, crie uma classe Pessoa que funcione com o código 
abaixo:

NOTA: Os métodos nome e sobrenome não devem ser acessíveis. Apenas nome_completo

class Pessoa
  # Resolva o exercício aqui
end
=end


class Pessoa
attr_reader :nome
attr_reader :sobrenome
attr_accessor :nome_completo

def initialize (nome)
  @nome = nome
end

def nome_completo (completo)
  nome + sobrenome
end

end

roberto = Pessoa.new
roberto.idade = 50
roberto.nome = ("Roberto")
roberto.sobrenome = "da Silva"

puts "#{roberto.nome}, #{roberto.nome_completo}"


=begin
                                          Biriba Exercícios
1.

Utilizando attr_reader e/ou attr_writer e/ou attr_accessor sempre que puder, crie uma classe Pessoa que funcione com o código 
abaixo:

NOTA: Os métodos nome e sobrenome não devem ser acessíveis. Apenas nome_completo

class Pessoa
  # Resolva o exercício aqui
end
=end


class Pessoa
attr_reader :nome
attr_reader :sobrenome
attr_accessor :nome_completo

def initialize (nome,sobrenome,idade)
  @nome = nome
  @sobrenome = sobrenome
  @idade = idade
end

def nome_completo (completo)
  nome + sobrenome
end

end

roberto = Pessoa.new
roberto.idade = 50
roberto.nome = "Roberto"
roberto.sobrenome = "da Silva"

puts "#{roberto.nome}, #{roberto.nome_completo}"

=begin
                                          Biriba Exercícios
1.

Utilizando attr_reader e/ou attr_writer e/ou attr_accessor sempre que puder, crie uma classe Pessoa que funcione com o código 
abaixo:

NOTA: Os métodos nome e sobrenome não devem ser acessíveis. Apenas nome_completo

class Pessoa
  # Resolva o exercício aqui
end
=end



class Pessoa
attr_reader :nome
attr_reader :sobrenome
attr_accessor :nome_completo

def initialize (nome,sobrenome,idade)
  @nome = nome
  @sobrenome = sobrenome
  @idade = idade
end

def nome_completo 
  completo
end

end

roberto = Pessoa.new("Roberto","da Silva","50 anos")
puts "#{roberto.nome}, #{roberto.nome_completo("Roberto da Silva")}"  


def initialize (nome,sobrenome,idade)
  @nome = nome
  @sobrenome = sobrenome
  @idade = idade
end

def nome_completo (completo)
  nome + sobrenome
end

end

roberto = Pessoa.new("Roberto","da Silva","50 anos")
puts "#{roberto.nome}, #{roberto.nome_completo("Roberto da Silva")}"  #Roberto, Robertoda Silva <----- imprimiu assim 



class Pessoa
attr_reader :nome
attr_reader :sobrenome
attr_accessor :nome_completo

def initialize (nome,sobrenome,idade)
  @nome = nome
  @sobrenome = sobrenome
  @idade = idade
end

def nome_completo (completo)
  completo
end

end

roberto = Pessoa.new("Roberto","da Silva","50 anos")
puts "#{roberto.nome}, #{roberto.nome_completo("Roberto da Silva")}" #Roberto, Roberto da Silva <----- imprimiu assim 



class Pessoa
attr_reader :nome
attr_reader :sobrenome
attr_accessor :nome_completo
attr_accessor :idade

def initialize (nome,sobrenome,idade)
  @nome = nome
  @sobrenome = sobrenome
  @idade = idade
end

def nome_completo (completo)
  completo
end

end

roberto = Pessoa.new("Roberto","da Silva","50 anos")
puts "Nome: #{roberto.nome}, Sobrenome: #{roberto.sobrenome}, Idade: #{roberto.idade}, 
Nome completo: #{roberto.nome_completo("Roberto da Silva")}" 
#Nome: Roberto, Sobrenome: da Silva, Idade: 50 anos, 
#Nome completo: Roberto da Silva   <----- imprimiu assim 



=begin
                                          Biriba Exercícios
2 - Crie uma classe Produto com atributos nome e preco. Crie também uma classe Carrinho com atributo produto. A classe 
carrinho deve implementar um método total e calcular quanto custa o total baseado nos produtos que foi adicionado.

Faça as classes no código abaixo, em seguida execute o exercício.
=end
 
class Produto
  attr_accessor :nome 
  attr_accessor :preço

  def initialize(nome,preço)
  @nome = nome
  @preço = preço
  end
end

class Carrinho
  attr_accessor :produtos
  attr_accessor :total

  def initialize(produtos) #untitled.rb:31:in `<main>': undefined local variable or method `produtos' for main:Object (NameError)

    @produtos = produtos
  end
  def total(total)
    total =  produto + preço
  end
end

carrinho_compras = Carrinho.new(produtos,preço)
carrinho_compras.produtos << Produto.new("leite", 3)
carrinho_compras.produtos << Produto.new("nescau", 5)
carrinho_compras.produtos << Produto.new("pão", 6)
carrinho_compras.produtos << Produto.new("queijo", 8)

carrinho_compras.total(total)# 22



class Produto

  def initialize(nome,preço)
    @nome = nome
    @preço = preço
  end
end

class Carrinho
  def produto(produto)
    @produto = produto
  end
  def total(total)
    @total = @produto + @preço
  end
end

carrinho_compras = Carrinho.new   #untitled.rb:18:in `produto': wrong number of arguments (given 0, expected 1) (ArgumentError) from untitled.rb:28:in `<main>'


carrinho_compras.produto << Produto.new("leite", 3)
carrinho_compras.produto << Produto.new("nescau", 5)
carrinho_compras.produto << Produto.new("pão", 6)
carrinho_compras.produto << Produto.new("queijo", 8)

carrinho_compras.total # 22


class Produto
attr_accessor :nome 
attr_accessor :preço
attr_accessor :produtos
attr_accessor :total

  def initialize(nome,preço)
    @nome = nome
    @preço = preço
  end
end

class Carrinho

  def produtos
    @produtos 
  end
  def total
    total = produtos + preço
  end
end

carrinho_compras = Carrinho.new
carrinho_compras.produtos << Produto.new("leite", 3)
carrinho_compras.produtos << Produto.new("nescau", 5)
carrinho_compras.produtos << Produto.new("pão", 6)
carrinho_compras.produtos << Produto.new("queijo", 8)

carrinho_compras.total # 22