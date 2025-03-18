module Pagamento
  def pagar(bandeira)
    "Pagando com o cartão #{bandeira} o valor de RS#{valor}..."
  end
end

puts pagar
