# https://www.hackerrank.com/challenges/strong-password/problem?h_r=next-challenge&h_v=zen

# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER n
#  2. STRING password
def minimumNumber(n, password)
  req_chars = 0
  req_chars += 1 unless password =~ /[a-z]/
  req_chars += 1 unless password =~ /[A-Z]/
  req_chars += 1 unless password =~ /[0-9]/
  req_chars += 1 unless password =~ /[!@#$%^&*()\-+]/

  n + req_chars < 6 ? 6 - n : req_chars
end

# 1 char = 5
# 2 chars = 4
# 3 chars = aaa - 1..3
# 4 chars =
# a A0@ (usually it's +3)
# Ab1 -> (val determined +1, but still 2 more needed till min of 6) 3
# #HackerRank -> 2
# puts minimumNumber(5, '2bbbb')
# puts minimumNumber(3, 'Ab1')
# puts minimumNumber(11, '#HackerRank')
# Was a bit more special because the '-' for some reason had to be escaped.
puts minimumNumber(7, 'AUzs-nV')
