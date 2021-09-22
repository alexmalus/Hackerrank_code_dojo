# https://www.hackerrank.com/test/crlnp8rgs12/questions/a2b68fq8p7b

# length of s: 1 <= s <= 10 la a 5a + 5
# DOes not work, problem is not clear.
# def palindromeIndex(str)
#   return -1 if palindrome?(str)
#
#   str.chars.each_with_index do |char, idx|
#     str_copy = str.dump
#     str_copy.slice!(char)
#     return idx if str_copy == str_copy.reverse
#   end
#
#   -1
# end
#
# def palindrome?(str)
#   str == str.reverse
# end

# p palindromeIndex('aaab')
p palindromeIndex('baa')
# p palindromeIndex('aaa')

p palindromeIndex('aaab') == 3
p palindromeIndex('baa') == 0
p palindromeIndex('aaa') == -1
