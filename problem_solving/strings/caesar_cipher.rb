# https://www.hackerrank.com/challenges/caesar-cipher-1/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

# Julius Caesar protected his confidential information by encrypting it using a cipher.
# Caesar's cipher shifts each letter by a number of letters.
# If the shift takes you past the end of the alphabet, just rotate back to the front of the alphabet.
# In the case of a rotation by 3, w, x, y and z would map to z, a, b and c.

# Original alphabet:      abcdefghijklmnopqrstuvwxyz
# Alphabet rotated +3:    defghijklmnopqrstuvwxyzabc

ALPHABET_LIMIT = 26
BYTE_START = 96

def caesarCipher(str, rotate)
  # k can be max 100, however there are only 26 letters in the alphabet.
  rotate = rotate % ALPHABET_LIMIT
  return str if [0, ALPHABET_LIMIT].include? rotate

  final_s = []
  str.chars.each do |char|
    final_s << encrypt(char: char, rotate: rotate)
  end
  final_s.join
end

def encrypt(char:, rotate:)
  return char unless char =~ /[a-z]/i

  move = alphabet_pos(char) + rotate
  next_pos = move > ALPHABET_LIMIT ? move - ALPHABET_LIMIT : move
  shifted_char(char: char, next_pos: next_pos)
end

def alphabet_pos(char)
  char.downcase.bytes.map { |b| b - BYTE_START }.first
end

def shifted_char(char:, next_pos:)
  next_char = (BYTE_START + next_pos).chr
  # If the pos < 97, then we're dealing with upcased chars.
  byte(char) < 97 ? next_char.upcase : next_char
end

def byte(char)
  char.bytes.first
end

# print caesarCipher('middle-Outz', 2) == 'okffng-Qwvb'
str = 'DNFjxo?b5h*5<LWbgs6?V5{3M].1hG)pv1VWq4(!][DZ3G)riSJ.CmUj9]7Gzl?VyeJ2dIPEW4GYW*scT8(vhu9wCr]q!7eyaoy.'
expected_str = 'WGYcqh?u5a*5<EPuzl6?O5{3F].1aZ)io1OPj4(!][WS3Z)kbLC.VfNc9]7Zse?OrxC2wBIXP4ZRP*lvM8(oan9pVk]j!7xrthr.'
puts caesarCipher(str, 45)
puts caesarCipher(str, 45) == expected_str
