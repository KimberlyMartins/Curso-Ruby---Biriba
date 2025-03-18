=begin
	
É uma best practice do ruby de criar uma classe em arquivos ruby separados. Isso contribui para que o código fique organizado.

Utilizando require é possível espalhar o código em arquivos diferentes ruby, e no topo de cada arquivo, podemos dar require daquele arquivo que precisamos.

    require: Usado para bibliotecas (gems) ou para requerer arquivos. Necessário passar o caminho completo, por exemplo: require 'C:/Projetos/Ruby/minha_pasta/meu_arquivo.rb'

    require_relative: Uma forma alternativa para requerer um arquivo local, não precisando passar o caminho completo. Se o arquivo estiver na mesma pasta, basta fazer require_relative 'meu_arquivo.rb'

	
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
