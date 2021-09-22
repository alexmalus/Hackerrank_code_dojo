# https://www.hackerrank.com/challenges/the-birthday-bar/problem

# can be between 1 and 100 el
# each elem between 1 and 5
# d - between 1 and 31, m between 1 and 12
#
# s = has chocolate bars
# d - Ron's birth day
# m - Ron's birth month
# 1 2 1 3 2
# 3 2
# Output: how many ways can the chocolate bars be divided (depending on m) to match d
def birthday(s, d, m)
  size = s.size

  return 1 if m >= size && s.inject(:+) == m
  return s.select { |n| n == d }.count if m == 1

  times = 0
  s.each_index do |idx|
    times += 1 if s[idx..idx + m - 1].inject(:+) == d
    break if idx + m == size
  end

  times
end

s = [1, 2, 1, 3, 2]
d = 3
m = 2
p birthday(s, d, m)
