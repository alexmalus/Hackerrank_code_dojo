# https://www.hackerrank.com/challenges/mars-exploration/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

# Letters in some of the SOS messages are altered by cosmic radiation during transmission.
# Given the signal received by Earth as a string, s , determine how many letters of the SOS message have been changed by radiation.

def marsExploration(s)
  expected_msg = %w[S O S]
  bad_signals = 0
  chunks = s.scan(/.{3}/)

  chunks.each { |chunk| chunk.chars.each_with_index { |char, i| bad_signals += 1 unless expected_msg[i] == char } }

  bad_signals
end

# puts marsExploration('SOSSPSSQSSOR') == 3
# puts marsExploration('SOSSOT') == 1
# puts marsExploration('SPS') == 1
# puts marsExploration('POR') == 2
puts marsExploration('SOSSOSSSSOSOIEISOSPOISOSIUSISO')
puts marsExploration('SOSSOSSSSOSOIEISOSPOISOSIUSISO') == 14
