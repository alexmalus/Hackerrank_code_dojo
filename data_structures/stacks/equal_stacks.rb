# https://www.hackerrank.com/challenges/equal-stacks/problem

def equalStacks(h1, h2, h3)
  h = [h1, h2, h3]
  s = h.map(&:sum)

  while s.uniq.size > 1
    tallest = s.map.with_index.max[1]
    s[tallest] -= h[tallest].shift
  end

  s.first
end

h1 = [3, 2, 1, 1, 1]
h2 = [4, 3, 2]
h3 = [1, 1, 4, 1]

p equalStacks(h1, h2, h3) == 5
