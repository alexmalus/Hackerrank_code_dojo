# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
# arr is an array of arrays.
# [ [0,1,2], [3,4,5], [6,7,8] ]

# 1 2 3
# 4 5 6
# 9 8 9
# 1 2 3 4 5 
# 4 5 6 7 5
# 9 8 9 1 5
# 1 2 3 4 5
# 1 2 3 4 5


# ((arr[0][0] + arr[1][1] + arr[2][2]) - (arr[0][2] + arr[1][1] + arr[2][0])).abs
def diagonalDifference(arr)
  first_diag = 0
  second_diag = 0
  arr.size.times do |i|
    first_diag += arr[i][i]
    second_diag += arr[i][arr.size - 1 - i]
  end

  (first_diag - second_diag).abs
end

arr = [[11, 2, 4], [4, 5, 6], [10, 8, -12]]
puts diagonalDifference(arr) == 15
