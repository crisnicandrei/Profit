#Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
#> stock_picker([17,3,6,9,15,8,6,1,10])
#=> [1,4]  # for a profit of $15 - $3 == $12


def stock_picker(numbers)
    sell_value=0
    buy_value=0
    profit=0
    numbers.each_with_index do |a,y|
        numbers.each_with_index do |b,x|
            if b-a>profit&&x>y
                profit=b-a
                sell_value=b
                buy_value=a
            end
        end
    end
    puts "[#{buy_value} #{sell_value}] with a value of #{profit}"
end



stock_picker([17,3,6,9,15,8,6,1,10])