# https://www.hackerrank.com/challenges/reduced-string/problem

def superReducedString(s)
  s = reduce_str(s)
  s.size.zero? ? 'Empty String' : s
end

def reduce_str(str)
  init_size = str.size

  str.chars.uniq.each { |char| str.gsub!(/#{char}#{char}/, '') }

  init_size == str.size ? str : reduce_str(str)
end

# aab shortens to b in one operation: remove the adjacent a characters.
# Remove the two 'b' characters leaving 'aa'. Remove the two 'a' characters to leave ''. Return 'Empty String'.
puts superReducedString('aaabccddd') == 'abd'
