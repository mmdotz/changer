class Changer

  def run(amount)
    coin_values = [25, 10, 5, 1]
    return_coins = []

    while amount > 0
        coin_values.each do |coin|
      if amount >= coin
        num_coins = amount/coin
        num_coins.times do
        return_coins << coin
        end
        amount = amount - (coin * num_coins)
      end
    end
  end
  print return_coins
end
end

changer = Changer.new
changer.run(90)
