#AULA UDEMY - PROF JACKSON PIRES 

class Adivinhar_numero
attr_reader :numero

	def initialize
		@numero = 5
	end

	def tentar_advinhar(numero=0)
		if numero ==@numero
			return "Voce venceu!"
		elsif numero > @numero
			return "O número informado é maior que o escolhido"
		else
			return "O número informado é menor que o escolhido"
		end
	end
end

jogo = Adivinhar_numero.new
puts "Digite um número"
numero = gets.to_i

puts jogo.tentar_advinhar(numero)


#----------------------------------------------------

class Adivinhar_numero
attr_reader :numero
attr_reader :venceu

  def initialize
    @numero = 5
    @venceu = false
  end

  def tentar_advinhar(numero = 0)
    if numero == @numero
      @venceu = true
      return "Voce venceu!"
    elsif numero > @numero
      return "O número informado é maior que o escolhido"
    else
      return "O número informado é menor que o escolhido"
    end
  end
end

jogo = Adivinhar_numero.new

until jogo.venceu do 
  puts "Digite um número"
  numero = gets.to_i
  puts jogo.tentar_advinhar(numero)
end


#-----------------------------------------

class Adivinhar_numero
attr_reader :numero
attr_reader :venceu

  def initialize
    @numero = Random.rand(1..10)
    @venceu = false
  end

  def tentar_advinhar(numero = 0)
    if numero == @numero
      @venceu = true
      return "Voce venceu!"
    elsif numero > @numero
      return "O número informado é maior que o escolhido"
    else
      return "O número informado é menor que o escolhido"
    end
  end
end

jogo = Adivinhar_numero.new

until jogo.venceu do 
  puts "Digite um número"
  numero = gets.to_i
  puts jogo.tentar_advinhar(numero)
end