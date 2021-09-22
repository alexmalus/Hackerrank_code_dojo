# https://www.hackerrank.com/challenges/crush/problem

# Parameters:
# int n - the number of elements in the array
# int queries[q][3] - a two dimensional array of queries where each queries[i] contains three integers, a, b, and k.
#
# returns: int - the maximum value in the resultant array
# What I need to do: add k between indices a and b inclusive..
# def arrayManipulation(n, queries)
#   temp_arr = Array.new(n, 0)
#
#   queries.each { |query| ((query[0] - 1)..(query[1] - 1)).each { |idx| temp_arr[idx] += query[2] } }
#
#   temp_arr.max
# end

def arrayManipulation(n, queries)
  sum = 0
  max = 0

  v = queries.flat_map { |q| [[q[0], q[-1]], [q[1] + 1, -1 * q[-1]]] }.sort

  v.each do |arr|
    sum += arr[1]
    max = sum if sum > max
  end

  max
end

# can be 20K operations..
n = 5
# can have max 1 million sub arrays
# sub array -> k - can be 1 billion
queries = [[1, 2, 100], [2, 5, 100], [3, 4, 100]]
p arrayManipulation(n, queries)
# p arrayManipulation(n, queries) == 200
