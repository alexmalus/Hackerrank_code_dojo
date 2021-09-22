# https://www.hackerrank.com/challenges/between-two-sets/problem

# The elements of the first array are all factors of the integer being considered
# The integer being considered is a factor of all elements of the second array
# These numbers are referred to as being between the two arrays. Determine how many such numbers exist.
#
# a = [2, 6]
# b = [24, 36]
# two numbers: 6 and 12.
# 6 % 2 = 0, 6 % 6 = 0
# Then, using 6 for the second array:
# 24 % 6 = 0, 36 % 6 = 0
# same for 12.
# Output: 2 (integer)
def getTotalX(a, b)
  (a[-1]..b[0]).to_a.reject do |cand|
    first_issue = a.detect { |elem| !(cand % elem).zero? }
    second_issue = first_issue ? false : b.detect { |elem| !(elem % cand).zero? }

    second_issue.nil? ? false : true
  end.count
end

puts getTotalX([2, 4], [16, 32, 96])
