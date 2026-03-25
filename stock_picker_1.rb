def stock_picker(stock_prices)
  max_gain = 0
  buy_day = 0
  sell_day = 0

  stock_prices.each_with_index do |price,index|
    following_prices = stock_prices.drop(index+1)

    following_prices.each do |following_price|
      current_gain = following_price - price
      
      if current_gain > max_gain
        max_gain = current_gain

        buy_day = stock_prices.index(price)
        sell_day = stock_prices.index(following_price)
      end
    end
  end

  p [buy_day,sell_day]
end


stock_picker([17,3,6,9,15,8,6,1,10])