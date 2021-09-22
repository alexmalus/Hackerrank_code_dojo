# https://www.hackerrank.com/challenges/plus-minus/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

def plusMinus(arr)
  zeroes = 0
  pluses = 0
  minuses = 0

  arr.each do |i|
    if i.zero?
      zeroes += 1
    elsif i.positive?
      pluses += 1
    else
      minuses += 1
    end
  end

  p_formatted(num: pluses, divided_by: arr.count)
  p_formatted(num: minuses, divided_by: arr.count)
  p_formatted(num: zeroes, divided_by: arr.count)
end

def p_formatted(num:, divided_by:)
  p format('%<num>0.6f', num: num / divided_by.to_f).to_f
end

plusMinus([-4, 3, -9, 0, 4, 1])
