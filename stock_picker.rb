def stock_picker(stocks) 
    stocks_pair = []
    greatest_profit = 0
    stocks.each_with_index do | buy_stock, buy_idx |
        stocks.each_with_index do | sell_stock, sell_idx |
            if buy_idx < sell_idx && sell_stock - buy_stock > greatest_profit
                greatest_profit = sell_stock - buy_stock
                stocks_pair.clear()
                stocks_pair.push(buy_idx)
                stocks_pair.push(sell_idx)
            end
        end
    end
    stocks_pair
end

p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([17,3,6,9,15,8,6,10,1])
