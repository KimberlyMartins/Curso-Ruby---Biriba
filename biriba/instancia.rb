


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