# https://www.hackerrank.com/challenges/weighted-uniform-string/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

# A weighted string is a string of lowercase English letters where each letter has a weight.
# Character weights are 1 to 26 from a to z as shown below:

# s = 'abbcccdddd'
# queries = [1,7,5,4,15]
# Working from left to right, weights that exist are:
# string  weight
# a       1
# b       2
# bb      4
# c       3
# cc      6
# ccc     9
# d       4
# dd      8
# ddd     12
# dddd    16
#  The return array is ['Yes', 'No', 'No', 'Yes', 'No'].

require 'set'

BYTE_START = 96

def weightedUniformStrings(str, queries)
  weights = Set.new
  option = ''

  str.size.times do |i|
    option += str[i]
    weights.add((str[i].ord - BYTE_START) * option.size)

    option = '' if str[i] != str[i + 1]
  end

  queries.map { |q| weights.include?(q) ? 'Yes' : 'No' }
end

#  The return array is ['Yes', 'No', 'No', 'Yes', 'No'].
# weightedUniformStrings('abbcccdddd', [1,7,5,4,15])
# p weightedUniformStrings('abccddde', [6,1,3,12,5,9,10])
# puts('Second')
# weightedUniformStrings('aaabbbbcccddd', [5,9,7,8,12,5])
