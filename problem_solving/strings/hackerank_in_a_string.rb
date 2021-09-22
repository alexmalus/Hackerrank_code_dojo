# https://www.hackerrank.com/challenges/hackerrank-in-a-string/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

# We say that a string contains the word hackerrank if a subsequence of its characters spell the word hackerrank.
# Remember that a subsequence maintains the order of characters selected from a sequence.

# hccaakkerrannkk
# h valid, expecting a now..
# c valid, c valid as we're just waiting for 'a'
# a is there.
# but then we never got a 'c' after.
#
def hackerrankInString(str)
  expected_chars = %w[h a c k e r r a n k]
  input_chars = str.chars

  str.chars.each do |char|
    # Thought so, apparently not: Edge case: there should be no more chars after the last 'k' in hackerrank.
    # break if expected_chars.empty?

    input_chars.shift
    expected_chars.shift if char == expected_chars[0]
  end

  expected_chars.empty? && input_chars.empty? ? 'YES' : 'NO'
end

# Sample:
# puts hackerrankInString('hereiamstackerrank') == 'YES'
# puts hackerrankInString('hackerworld') == 'NO'
# puts hackerrankInString('hhaacckkekraraannk') == 'YES'
# puts hackerrankInString('rhbaasdndfsdskgbfefdbrsdfhuyatrjtcrtyytktjjt') == 'NO'

# puts hackerrankInString('knarrekcah') == 'NO'
# puts hackerrankInString('hackerrank') == 'YES'
# puts hackerrankInString('hackeronek') == 'NO'
# puts hackerrankInString('abcdefghijklmnopqrstuvwxyz') == 'NO'
# puts hackerrankInString('rhackerank') == 'NO'
# puts hackerrankInString('ahankercka') == 'NO'
puts hackerrankInString('hacakaeararanaka') == 'YES'
# puts hackerrankInString('hhhhaaaaackkkkerrrrrrrrank') == 'YES'
# puts hackerrankInString('crackerhackerknar') == 'NO'
# puts hackerrankInString('hhhackkerbanker') == 'NO'