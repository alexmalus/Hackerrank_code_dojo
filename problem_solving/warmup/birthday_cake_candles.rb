# You are in charge of the cake for a child's birthday. You have decided the cake will have one candle for each year of their total age.
# They will only be able to blow out the tallest of the candles. Count how many candles are tallest.

# works, but too slow on huge arrays.
# def birthdayCakeCandles(candles)
#   candles.inject(0) { |sum, n| n == candles.max ? sum += 1 : sum }
# end

def birthdayCakeCandles(candles)
  yes = 0
  max = candles.max

  candles.sort!.reverse_each { |candle| candle == max ? yes += 1 : break }

  yes
end

puts birthdayCakeCandles([3, 2, 1, 3])
