# https://www.hackerrank.com/challenges/separate-the-numbers/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

# Sample Input 0
# 7 (how many queries)
# 1234
# 91011
# 99100
# 101103
# 010203
# 13
# 1

# Sample Output 0
# YES 1
# YES 9
# YES 99
# NO
# NO
# NO
# NO

# 1234 -> 1 + 2 + 3 + 4
# 91011 -> 9 + 10 + 11
# 99100 -> 99 + 100
# size of : max 32 chars long.
def separateNumbers(str)
  puts compute_beauty(str: str)
end

def compute_beauty(str:, split_by: 1)
  return 'NO' if str.size == 1 || str[0] == '0'

  chars = str.chars
  split_no = split_by
  queue = [chars.shift(split_by).join]

  while chars.any?
    split_no += 1 if queue[-1].squeeze.to_i == 9
    queue << chars.shift(split_no).join

    break if queue[-1].to_i - queue[-2].to_i != 1
  end

  return "YES #{queue[0]}" if chars.none? && queue[-1].to_i - queue[-2].to_i == 1
  return 'NO' if split_by > str.size / 2

  compute_beauty(str: str, split_by: split_by + 1)
end

puts separateNumbers('13')
