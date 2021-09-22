# https://www.hackerrank.com/challenges/2d-array/problem

# 6X6 D array
# Print the largest (maximum) hourglass sum found in arr.
LIMIT_SHAPE_BOUNDS = 3

def hourglassSum(arr)
  sums = []

  (0..LIMIT_SHAPE_BOUNDS).each do |x|
    (0..LIMIT_SHAPE_BOUNDS).each do |y|
      sums << arr[x][y..y + 2].inject(:+) + arr[x + 1][y + 1] + arr[x + 2][y..y + 2].inject(:+)
    end
  end

  sums.max
end

arr = [[1, 1, 1, 0, 0, 0], [0, 1, 0, 0, 0, 0], [1, 1, 1, 0, 0, 0], [0, 0, 2, 4, 4, 0], [0, 0, 0, 2, 0, 0], [0, 0, 1, 2, 4, 0]]
p hourglassSum(arr)
p hourglassSum(arr) == 19
