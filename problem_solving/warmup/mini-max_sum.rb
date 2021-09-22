# Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers.
# Then print the respective minimum and maximum values as a single line of two space-separated long integers.
# Input: [1,2,3,4,5]
# Output: 10 14
def miniMaxSum(arr)
  comboes = arr.combination(4).to_a.collect! { |combo| combo.inject(:+) }
  puts "#{comboes.min} #{comboes.max}"
end

miniMaxSum([1, 2, 3, 4, 5])
