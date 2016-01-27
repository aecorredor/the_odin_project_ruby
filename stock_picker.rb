def stock_picker(stock_prices)
  profit = 0
  highest_profit = 0
  highest_profit_days = [0, 0]
  stock_prices.each_with_index do |item, buy_day|
    ((buy_day + 1)...(stock_prices.length - 1)).each do |sell_day|
      profit = stock_prices[sell_day] - stock_prices[buy_day]
      if profit > highest_profit
        highest_profit = profit
        highest_profit_days = [buy_day, sell_day]
      end
    end
  end
  puts highest_profit_days.to_s
  highest_profit_days
end

test_profits = [17,3,6,9,15,8,6,1,10]
test_profits2 = [55, 22, 4, 2, 78, 6, 10, 77, 9, 10, 90, 20, 6, 9]
stock_picker(test_profits2)
