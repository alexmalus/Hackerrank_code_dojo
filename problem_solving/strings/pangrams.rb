# https://www.hackerrank.com/challenges/pangrams/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

# A pangram is a string that contains every letter of the alphabet.
# Given a sentence determine whether it is a pangram in the English alphabet.
# Ignore case. Return either pangram or not pangram as appropriate.

def pangrams(s)
  alphabet = ('a'..'z').to_a

  s.downcase.chars.each { |char| alphabet.delete(char) }

  alphabet.empty? ? 'pangram' : 'not pangram'
end

puts pangrams('We promptly judged antique ivory buckles for the next prize') == 'pangram'
puts pangrams('We promptly judged antique ivory buckles for the prize') == 'not pangram'
