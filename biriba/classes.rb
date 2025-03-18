                                  #Classe e Instancias
=begin
                                         Classes 
 São o molde para a criação de objetos e definem propriedades e comportamentos. O nome das classes começa com letra maiúscula e para
 nomes compostos devemos usar o padrão CamelCase

 Exemplo:
 class Carro                         class NomeDoSeuCarro
   ###                                     #######
 end                                 end


                                         Objetos
O objeto existe porque o conceito de POO é representar no software as características e comportamentos relevantes dos objetos 
reais ao domínio.
                                        Instância
É a coisa técnica qu permite a existência de um objeto na memória. A instância de uma classe é um novo objeto criado dessa classe,
com o operador .new . Instanciar uma classe é criar um novo objeto do mesmo tipo dessa classe.

  Exemplo:
  Ao modelar um sistema de notas fiscais, as notas e seus itens são objetos e ao codificar o sistema, classes serão declaradas para
  definir esses objetos e para que esses objetos existam na memória serão criadas instâncias dessas classes.




                            Nós dizemos que os objetos podem:

                                  Fazer as coisas
                                  Saber as coisas

                 Os métodos fazem as coisas acontecerem, fazem as coisas.

               As variáveis de instância armazenam dados, elas sabem coisas.
=end

                                   # Instância e variável

class Contador
  def contar
    if @contador
      @contador += 1
    else
      @contador = 0
    end
    @contador
  end
end

#Contador.contar # NoMethodError (undefined method `contar' for Contador:Class)

Contador.new.contar # 0
Contador.new.contar # 0

contador1 = Contador.new
contador1.contar # 0
contador1.contar # 1
contador1.contar # 2

contador2 = Contador.new
contador2.contar # 0

contador1.contar # 3
contador2.contar # 1


class Contador
  def contar
    if @contador
      @contador = @contador + 1
    else
      @contador = 0
    end
    @contador
  end
end


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


class Pessoa
  def definir_nome (novo_nome)
    puts "o novo nome é #{novo_nome}"
    @nome = novo_nome
  end

  def exibir_informações 
    puts "Nome:#{@nome}"
  end
end 

pessoa = Pessoa.new
puts "Qual o seu nome?"
pessoa.definir_nome (gets.chomp)
pessoa.exibir_informações


pessoa2 = Pessoa.new

pessoa2.definir_nome (gets.chomp)
pessoa2.exibir_informações


class Pessoa
  def definir_nome (novo_nome)
    puts "o novo nome é #{novo_nome}"
    @nome = novo_nome
  end

  def exibir_informações 
    puts "Nome:#{@nome}"
  end
end 

pessoa = Pessoa.new
pessoa.definir_nome ("Gabriel")
pessoa.exibir_informações


pessoa2 = Pessoa.new

pessoa2.definir_nome ("Kimberly")
pessoa2.exibir_informações