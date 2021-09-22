# https://www.hackerrank.com/challenges/two-characters/problem?h_r=next-challenge&h_v=zen

# Given a string, remove characters until the string is made up of any two alternating characters.
# When you choose a character to remove, all instances of that character must be removed.
# Determine the longest string possible that contains just two alternating letters.

# 10          length of s = 10
# beabeefeab  s = 'beabeefeab'
# Output: 5
# The characters present in *s* are a, b, e, and f. This means that *t*
# must consist of two of those characters and we must delete two others.
# Our choices for characters to leave are [a,b], [a,e], [a, f], [b, e], [b, f] and [e, f].
# If we delete e and f, the resulting string is babab. This is a valid *t*
# as there are only two distinct characters (a and b), and they are alternating within the string.
# If we delete a and f, the resulting string is bebeeeb. This is not a valid string
# because there are consecutive e's present. Removing them would leave consecutive b's, so this fails to produce a valid string
# Other cases are solved similarly.
# babab is the longest string we can create.

def alternate(str)
  chars = str.chars.uniq
  final_size = 0
  return final_size if chars.size == 1

  # purpose is to keep the delete all letters *except* the ones in the combo,
  #   then verify if 't' (remaining string) is valid.
  final_chars = chars.combination(2).to_a
  final_chars.each do |combo|
    queue = []
    valid = true
    t = str.gsub(/[^#{combo.join}]+/, '')
    t.chars.each do |char|
      queue << char
      next if queue.size == 1

      valid = queue[-1] != queue[-2]
      break unless valid
    end

    next unless valid && t.size > final_size

    final_size = t.size
  end

  final_size
end

print alternate('beabeefeab')
# puts alternate('beabeefeab') == 5
