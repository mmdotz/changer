class Changer

  attr_accessor :coin_values, :index

  def self.run(amount)
    coin_values = [25, 10, 5, 1]
    return_coins = []
    amount_left = amount
    index = 0
    coin_to_divide_by = coin_values[index]

    while amount_left > 0
      if amount >= coin_to_divide_by
        num_coins = amount/coin_values[index]
        return_coins.push([coin_values[index]] * num_coins)
        amount_left = amount % coin_to_divide_by
        coin_to_divide_by = coin_values[index + 1]
      else
        coin_to_divide_by = coin_values[index + 1]
        #coin_to_divide_by = 10 #amount_left still = amount
      end
      amount_left = 0
    end
  end
end

#break loop when amount_left = 0
# coin_values.cycle do |coin|
#     number_into = amt / coin
#      if number_into >= 1
#       return_coins << [coin] * number_into
#       amount_left = amt % coin



    # elsif amt 24 > coin_values[0] 25
    #   amount_left = amt % coin_values[0]
    #   num_quarters = amount_left / coin_values[0]
    #   return_coins << coin_values[0] * num_quarters
    # else
    #   if amount_left > coin_values[1]
    #     amount_left = amount_left % coin_values[1]
    #     num_dimes = amount_left / coin_values[1]
    #     return_coins << coin_values[1] * num_dimes

    #   elsif amount_left > coin_values[2]
    #     amount_left = amount_left % coin_values[2]
    #     num_nickels = amount_left / coin_values[2]
    #     return_coins << coin_values[1] * num_nickels

    #   elsif amount_left > coin_values[3]
    #     amount_left = amount_left % coin_values[3]
    #     #amount_left = 0
    #     num_pennies = amount_left / coin_values[3]
    #     return_coins << coin_values[3] * num_pennies

    #   coins_returned.push(amt / coin_values[1]) #flatten
    #   end

