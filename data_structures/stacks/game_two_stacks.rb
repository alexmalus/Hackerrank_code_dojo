# https://www.hackerrank.com/challenges/game-of-two-stacks/problem

def twoStacks(maxSum, a, b)
  # moves, score gained.
  progress = [0, 0]

  loop do
    break if a.empty? && b.empty?

    progress[1] += a[0] > b[0] ? b.shift : a.shift

    break if progress[1] >= maxSum

    progress[0] += 1
  end

  progress[0]
end

a = [4, 2, 4, 6, 1]
b = [2, 1, 8, 5]
maxSum = 10

p twoStacks(maxSum, a, b) == 4
