
=begin
1.

Implementar uma classe Carro que inicializa com o modelo, cor, km rodados. A classe carro deve expor os métodos:

    detalhes (que retorna modelo e cor do carro)
    km_rodados (que retorna os km rodados pelo carro)
    precisa_trocar_oleo? (retorna true se os km_rodados forem >10000 senão, false)
    precisa_trocar_pneu? (retorna true se os km_rodados forem >50000 senão, false)

Segue o código para teste abaixo:

carro_preto = Carro.new("corsa", "preto", 32000)
carro_preto.detalhes # "corsa preto"
carro_preto.km_rodados # 32000
carro_preto.precisa_trocar_oleo? # true
carro_preto.precisa_trocar_pneu? # false

carro_azul = Carro.new("fusca", "azul", 9000)
carro_azul.detalhes # "fusca azul"
carro_preto.km_rodados # 9000
carro_azul.precisa_trocar_oleo? # false
carro_azul.precisa_trocar_pneu? # false

carro_branco = Carro.new("palio", "branco", 51000)
carro_branco.detalhes # "palio branco"
carro_preto.km_rodados # 51000
carro_branco.precisa_trocar_oleo? # true
carro_branco.precisa_trocar_pneu? # true

=end

class Carro
  def initialize(modelo,cor,km)
    @modelo = modelo
    @cor = cor
    @km = kmrodados

  end

  def detalhes(modelo,cor)
  end

  def km_rodados(km)
    
  end
  def 
    
  end
end



class Carro
  def initialize(modelo,cor,km)
    @modelo = modelo
    @cor = cor
    @km = km
  end

  def detalhes
    @modelo
    @cor
  end

  def km_rodados
    @km
  end
  def precisa_trocar_oleo?
     if km_rodados>10000
      true
     else
      false
    end
  end
  def precisa_trocar_pneu?
    if km_rodados>50000
      true
    else
      false
    end
  end
end

carro_preto = Carro.new("corsa", "preto", 32000)
puts carro_preto.detalhes # "corsa preto"
puts carro_preto.km_rodados # 32000  #terminal.rb:46:in `km_rodados': wrong number of arguments (given 0, expected 1) (ArgumentError) from terminal.rb:67:in `<main>'
puts carro_preto.precisa_trocar_oleo? # true
puts carro_preto.precisa_trocar_pneu? # false
   


   class Carro
  def initialize(modelo,cor,km)
    @modelo = modelo
    @cor = cor
    @km = km
  end

  def detalhes
    @modelo
    @cor
  end

  def km_rodados
    @km
  end
  def precisa_trocar_oleo?
     if km_rodados>10000
      true
     else
      false
    end
  end
  def precisa_trocar_pneu?
    if km_rodados>50000
      true
    else
      false
    end
  end
end

carro_preto = Carro.new("corsa", "preto", 32000)
puts carro_preto.detalhes # "corsa preto"
puts carro_preto.km_rodados # 32000
puts carro_preto.precisa_trocar_oleo? # true
puts carro_preto.precisa_trocar_pneu? # false       retornou  >>> preto 3200 true false




class Carro
  def initialize(modelo,cor,km)
    @modelo = modelo
    @cor = cor
    @km = km
  end

  def detalhes
   "#{@modelo}, #{@cor}"
  end

  def km_rodados
    @km
  end
  def precisa_trocar_oleo?
     if km_rodados>10000
      true
     else
      false
    end
  end
  def precisa_trocar_pneu?
    if km_rodados>50000
      true
    else
      false
    end
  end
end

carro_preto = Carro.new("corsa", "preto", 32000)
puts carro_preto.detalhes # "corsa preto"
puts carro_preto.km_rodados # 32000
puts carro_preto.precisa_trocar_oleo? # true
puts carro_preto.precisa_trocar_pneu? # false    retornou >>> corsa, preto 3200 true false 



class Carro
  def initialize(modelo,cor,km)
    @modelo = modelo
    @cor = cor
    @km = km
  end

  def detalhes
   "#{@modelo} #{@cor}"
  end

  def km_rodados
    @km
  end
  def precisa_trocar_oleo?
     if km_rodados>10000
      true
     else
      false
    end
  end
  def precisa_trocar_pneu?
    if km_rodados>50000
      true
    else
      false
    end
  end
end

carro_preto = Carro.new("corsa", "preto", 32000)
puts carro_preto.detalhes # "corsa preto"
puts carro_preto.km_rodados # 32000
puts carro_preto.precisa_trocar_oleo? # true
puts carro_preto.precisa_trocar_pneu? # false   retornou >>> corsa preto 3200 true false


class Carro
  def initialize(modelo,cor,km)
    @modelo = modelo
    @cor = cor
    @km = km
  end

  def detalhes
   "#{@modelo} #{@cor}"
  end

  def km_rodados
    @km
  end
  def precisa_trocar_oleo?
     if km_rodados>10000
      true
     else
      false
    end
  end
  def precisa_trocar_pneu?
    if km_rodados>50000
      true
    else
      false
    end
  end
end

carro_preto = Carro.new("corsa", "preto", 32000)
puts "Modelo e cor: #{carro_preto.detalhes} km rodados: #{carro_preto.km_rodados}
Precisa trocar o óleo? #{carro_preto.precisa_trocar_oleo?}
Precisa trocar o pneu? #{carro_preto.precisa_trocar_pneu?} "
puts carro_preto.detalhes # "corsa preto"
puts carro_preto.km_rodados # 32000
puts carro_preto.precisa_trocar_oleo? # true
puts carro_preto.precisa_trocar_pneu? # false    

=begin 
Retornou
Modelo e cor: corsa preto km rodados: 32000
Precisa trocar o óleo? true
Precisa trocar o pneu? false 
corsa preto
32000
true
false   
=end  

class Carro
  def initialize(modelo,cor,km)
    @modelo = modelo
    @cor = cor
    @km = km
  end

  def detalhes
   "#{@modelo} #{@cor}"
  end

  def km_rodados
    @km
  end
  def precisa_trocar_oleo?
     if km_rodados>10000
      true
     else
      false
    end
  end
  def precisa_trocar_pneu?
    if km_rodados>50000
      true
    else
      false
    end
  end
end

carro_preto = Carro.new("corsa", "preto", 32000)
puts carro_preto.detalhes # "corsa preto"
puts carro_preto.km_rodados # 32000
puts carro_preto.precisa_trocar_oleo? # true
puts carro_preto.precisa_trocar_pneu? # false

carro_azul = Carro.new("fusca", "azul", 9000)
puts carro_azul.detalhes # "fusca azul"
puts carro_preto.km_rodados # 9000                             #errado no enunciado do exercicio
puts carro_azul.precisa_trocar_oleo? # false
puts carro_azul.precisa_trocar_pneu? # false

carro_branco = Carro.new("palio", "branco", 51000)
puts carro_branco.detalhes # "palio branco"
puts carro_preto.km_rodados # 51000                            errado no enunciado do exercicio
puts carro_branco.precisa_trocar_oleo? # true
puts carro_branco.precisa_trocar_pneu? # true

=begin
corsa preto
32000
true
false
fusca azul
32000 -------------repetiu do preto, errado no enunciado do exercicio
false
false
palio branco
32000 ------------ repetiu do preto,errado no enunciado do exercicio
true
true
=end


# ------------------------------------------------------------------------------------

class Carro
  def initialize(modelo,cor,km)
    @modelo = modelo
    @cor = cor
    @km = km
  end

  def detalhes
   "#{@modelo} #{@cor}"
  end

  def km_rodados
    @km
  end
  def precisa_trocar_oleo?
     if km_rodados>10000
      true
     else
      false
    end
  end
  def precisa_trocar_pneu?
    if km_rodados>50000
      true
    else
      false
    end
  end
end

carro_preto = Carro.new("corsa", "preto", 32000)
puts carro_preto.detalhes # "corsa preto"
puts carro_preto.km_rodados # 32000
puts carro_preto.precisa_trocar_oleo? # true
puts carro_preto.precisa_trocar_pneu? # false 

carro_azul = Carro.new("fusca", "azul", 9000)
puts carro_azul.detalhes # "fusca azul"
puts carro_azul.km_rodados # 9000
puts carro_azul.precisa_trocar_oleo? # false
puts carro_azul.precisa_trocar_pneu? # false

carro_branco = Carro.new("palio", "branco", 51000)
puts carro_branco.detalhes # "palio branco"
puts carro_branco.km_rodados # 51000
puts carro_branco.precisa_trocar_oleo? # true
puts carro_branco.precisa_trocar_pneu? # true

=begin

corsa preto
32000
true
false
fusca azul
9000
false
false
palio branco
51000
true
true 

=end


class Carro
  def initialize(modelo,cor,km)
    @modelo = modelo
    @cor = cor
    @km = km
  end

  def detalhes
   "#{@modelo} #{@cor}"
  end

  def km_rodados
    @km
  end
  def precisa_trocar_oleo?
     if km_rodados>10000
      true
     else
      false
    end
  end
  def precisa_trocar_pneu?
    if km_rodados>50000
      true
    else
      false
    end
  end
end

carro_preto = Carro.new("corsa", "preto", 32000)
puts "Modelo e cor: #{carro_preto.detalhes} km rodados: #{carro_preto.km_rodados}
Precisa trocar o óleo? #{carro_preto.precisa_trocar_oleo?}
Precisa trocar o pneu? #{carro_preto.precisa_trocar_pneu?} "
puts carro_preto.detalhes # "corsa preto"
puts carro_preto.km_rodados # 32000
puts carro_preto.precisa_trocar_oleo? # true
puts carro_preto.precisa_trocar_pneu? # false 

carro_azul = Carro.new("fusca", "azul", 9000)
puts "Modelo e cor: #{carro_azul.detalhes} km rodados: #{carro_azul.km_rodados}
Precisa trocar o óleo? #{carro_azul.precisa_trocar_oleo?}
Precisa trocar o pneu? #{carro_azul.precisa_trocar_pneu?} "
puts carro_azul.detalhes # "fusca azul"
puts carro_azul.km_rodados # 9000
puts carro_azul.precisa_trocar_oleo? # false
puts carro_azul.precisa_trocar_pneu? # false

carro_branco = Carro.new("palio", "branco", 51000)
puts "Modelo e cor: #{carro_branco.detalhes} km rodados: #{carro_branco.km_rodados}
Precisa trocar o óleo? #{carro_branco.precisa_trocar_oleo?}
Precisa trocar o pneu? #{carro_branco.precisa_trocar_pneu?} "
puts carro_branco.detalhes # "palio branco"
puts carro_branco.km_rodados # 51000
puts carro_branco.precisa_trocar_oleo? # true
puts carro_branco.precisa_trocar_pneu? # true

=begin
com o edit juntando as informações 

Modelo e cor: corsa preto km rodados: 32000
Precisa trocar o óleo? true
Precisa trocar o pneu? false 
corsa preto
32000
true
false
Modelo e cor: fusca azul km rodados: 9000
Precisa trocar o óleo? false
Precisa trocar o pneu? false 
fusca azul
9000
false
false
Modelo e cor: palio branco km rodados: 51000
Precisa trocar o óleo? true
Precisa trocar o pneu? true 
palio branco
51000
true
true
  
=end

=begin
2.
Aproveitando o exercício #1, crie uma classe Oficina. Essa classe vai ter uma lista para armazenar os carros (utilize a classe 
Carro do exercício anterior.) 
A Oficina precisa expor o método listar_todos_carros, listar_carros_troca_oleo e listar_carros_troca_pneu. Você precisa criar 
um método adicionar_carro para adicionar os carros na oficina.

Segue o código para teste abaixo:

oficina = Oficina.new
oficina.adicionar_carro(Carro.new("corsa", "preto", 32000))
oficina.adicionar_carro(Carro.new("fusca", "azul", 9000))
oficina.adicionar_carro(Carro.new("palio", "branco", 51000))

oficina.listar_todos_carros #["corsa preto", "fusca azul", "palio branco"]
oficina.listar_carros_troca_oleo #["corsa preto", "palio branco"]
oficina.listar_carros_troca_pneu #["palio branco"]


=end

class Carro
  def initialize(modelo,cor,km)
    @modelo = modelo
    @cor = cor
    @km = km
  end

  def detalhes
   "#{@modelo} #{@cor}"
  end

  def km_rodados
    @km
  end
  def precisa_trocar_oleo?
     if km_rodados>10000
      true
     else
      false
    end
  end
  def precisa_trocar_pneu?
    if km_rodados>50000
      true
    else
      false
    end
  end
end
class Oficina < Carro
  attr_accessor :listar_todos_carros,:listar_carros_troca_oleo,:listar_carros_troca_pneu
  def adicionar_carro
  end
end

oficina = Oficina.new
oficina.adicionar_carro(Carro.new("corsa", "preto", 32000))
oficina.adicionar_carro(Carro.new("fusca", "azul", 9000))
oficina.adicionar_carro(Carro.new("palio", "branco", 51000))

puts oficina.listar_todos_carros #["corsa preto", "fusca azul", "palio branco"]
puts oficina.listar_carros_troca_oleo #["corsa preto", "palio branco"]
puts oficina.listar_carros_troca_pneu #["palio branco"]


class Carro
  def initialize(modelo,cor,km)
    @modelo = modelo
    @cor = cor
    @km = km
  end

  def detalhes
   "#{@modelo} #{@cor}"
  end

  def km_rodados
    @km
  end
  def precisa_trocar_oleo?
     if km_rodados>10000
      true
     else
      false
    end
  end
  def precisa_trocar_pneu?
    if km_rodados>50000
      true
    else
      false
    end
  end
end

class Oficina < Carro
  attr_accessor :listar_todos_carros,:listar_carros_troca_pneu,:listar_carros_troca_oleo

  def adicionar_carro
  end
  def listar_todos_carros
  end
  def listar_carros_troca_pneu
    
  end
  def listar_carros_troca_oleo
    
  end
end


oficina = Oficina.new                                  #`initialize': wrong number of arguments (given 0 expected 3)
oficina.adicionar_carro(Carro.new("corsa", "preto", 32000))
oficina.adicionar_carro(Carro.new("fusca", "azul", 9000))
oficina.adicionar_carro(Carro.new("palio", "branco", 51000))

puts oficina.listar_todos_carros #["corsa preto", "fusca azul", "palio branco"]
puts oficina.listar_carros_troca_oleo #["corsa preto", "palio branco"]
puts oficina.listar_carros_troca_pneu #["palio branco"]



class Carro
  def initialize(modelo,cor,km)
    @modelo = modelo
    @cor = cor
    @km = km
  end

  def detalhes
   @detalhes = "#{@modelo} #{@cor}"
  end

  def km_rodados
    @km
  end
  def precisa_trocar_oleo?
     if km_rodados>10000
      true
     else
      false
    end
  end
  def precisa_trocar_pneu?
    if km_rodados>50000
      true
    else
      false
    end
  end
end
class Carro
  def initialize(modelo,cor,km)
    @modelo = modelo
    @cor = cor
    @km = km
  end

  def detalhes
   @detalhes = "#{@modelo} #{@cor}"
  end

  def km_rodados
    @km
  end
  def precisa_trocar_oleo?
     if km_rodados>10000
      true
     else
      false
    end
  end
  def precisa_trocar_pneu?
    if km_rodados>50000
      true
    else
      false
    end
  end
end

class Oficina < Carro
  attr_accessor :listar_todos_carros,:listar_carros_troca_pneu,:listar_carros_troca_oleo

  def adicionar_carro(modelo,cor,km)
    @modelo = modelo
    @cor = cor
    @km = km
  end
  def listar_todos_carros
    @detalhes
  end
  def listar_carros_troca_pneu
    
  end
  def listar_carros_troca_oleo
    
  end
end

oficina = Oficina.new  #`adicionar_carro': wrong number of arguments (given 1, expected 3) 


oficina.adicionar_carro(Carro.new("corsa", "preto", 32000))
oficina.adicionar_carro(Carro.new("fusca", "azul", 9000))
oficina.adicionar_carro(Carro.new("palio", "branco", 51000))

puts oficina.listar_todos_carros #["corsa preto", "fusca azul", "palio branco"]
puts oficina.listar_carros_troca_oleo #["corsa preto", "palio branco"]
puts oficina.listar_carros_troca_pneu #["palio branco"]


class Carro
  def initialize(modelo,cor,km)
    @modelo = modelo
    @cor = cor
    @km = km
  end

  def detalhes
   @detalhes = "#{@modelo} #{@cor}"
  end

  def km_rodados
    @km
  end
  def precisa_trocar_oleo?
     if km_rodados>10000
      true
     else
      false
    end
  end
  def precisa_trocar_pneu?
    if km_rodados>50000
      true
    else
      false
    end
  end
end
class Carro
  def initialize(modelo,cor,km)
    @modelo = modelo
    @cor = cor
    @km = km
  end

  def detalhes
   @detalhes = "#{@modelo} #{@cor}"
  end

  def km_rodados
    @km
  end
  def precisa_trocar_oleo?
     if km_rodados>10000
      true
     else
      false
    end
  end
  def precisa_trocar_pneu?
    if km_rodados>50000
      true
    else
      false
    end
  end
end

class Oficina < Carro
  attr_accessor :listar_todos_carros,:listar_carros_troca_pneu,:listar_carros_troca_oleo

  def adicionar_carro(modelo,cor,km)  #adicionar_carro': wrong number of arguments (given 0, expected 3)
    @modelo = modelo
    @cor = cor
    @km = km
  end
  def listar_todos_carros
    @detalhes
  end
  def listar_carros_troca_pneu
    
  end
  def listar_carros_troca_oleo
    
  end
end

carro_preto = Carro.new("corsa", "preto", 32000)
carro_azul = Carro.new("fusca", "azul", 9000)
carro_branco = Carro.new("palio", "branco", 51000)
oficina = Oficina.new("corsa", "preto", 32000)                              
oficina.adicionar_carro.carro_branco
oficina.adicionar_carro.carro_azul
oficina.adicionar_carro.carro_preto

puts oficina.listar_todos_carros #["corsa preto", "fusca azul", "palio branco"]
puts oficina.listar_carros_troca_oleo #["corsa preto", "palio branco"]
puts oficina.listar_carros_troca_pneu #["palio branco"]


class Oficina < Carro
  attr_accessor :listar_todos_carros,:listar_carros_troca_pneu,:listar_carros_troca_oleo

  def adicionar_carro
     "#{modelo},#{cor},#{km}"  #"#{modelo},#{cor},#{km}"
     #                             ^^^^^^
  end
  def listar_todos_carros
    @detalhes
  end
  def listar_carros_troca_pneu
    
  end
  def listar_carros_troca_oleo
    
  end
end


class Carro
  def initialize(modelo,cor,km)
    @modelo = modelo
    @cor = cor
    @km = km
  end

  def detalhes
   @detalhes = "#{@modelo} #{@cor}"
  end

  def km_rodados
    @km
  end
  def precisa_trocar_oleo?
     if km_rodados>10000
      true
     else
      false
    end
  end
  def precisa_trocar_pneu?
    if km_rodados>50000
      true
    else
      false
    end
  end
end

class Oficina < Carro
  attr_accessor :listar_todos_carros,:listar_carros_troca_pneu,:listar_carros_troca_oleo

  def adicionar_carro
   @modelo
   @carro_preto
   @km
  end
  def listar_todos_carros
    @detalhes
  end
  def listar_carros_troca_pneu
    @precisa_trocar_pneu
  end
  def listar_carros_troca_oleo
    @precisa_trocar_oleo
  end
end

oficina = Oficina.new
oficina.adicionar_carro(Carro.new("corsa", "preto", 32000))
oficina.adicionar_carro(Carro.new("fusca", "azul", 9000))
oficina.adicionar_carro(Carro.new("palio", "branco", 51000))

puts oficina.listar_todos_carros #["corsa preto", "fusca azul", "palio branco"]
puts oficina.listar_carros_troca_oleo #["corsa preto", "palio branco"]
puts oficina.listar_carros_troca_pneu #["palio branco"]