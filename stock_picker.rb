def stock_picker(prices)
# Step 1: Initialize variables to track the best buy day, sell day, and maximum profit
buy_day = 0
sell_day = 0
max_profit = 0
# Step 2: Iterate over each day in the prices array
prices.each_with_index do |buy_price, buy_index|
    prices[buy_index+1..-1].each_with_index do |sell_price, sell_index|
      profit = sell_price - buy_price

      if profit > max_profit
        max_profit = profit
        buy_day = buy_index
        sell_day = sell_index + buy_index + 1
      end
    end
  end
  [buy_day, sell_day]
end

stock_picker([17,3,6,9,15,8,6,1,10])
#[1,4]  # for a profit of $15 - $3 == $12
