# https://www.hackerrank.com/challenges/kangaroo/problem

# You are choreographing a circus show with various animals.
# For one act, you are given two kangaroos on a number line ready to jump in the positive direction (i.e, toward positive infinity).

# Output: YES/NO
# if K1 started before K2 and has greater or equal speed, NO | the other way around as well
#
# jump iterations
# 1, 2 and 2, 1 -> 3 and 3
# 0, 3 and 4, 2 -> 1: 3,6, 2:6,8, 3: 9,10, 4: 12,12 -> YES
# when should the program stop?
# if the kangaroo with more velocity has more distance, then game over.
def kangaroo(start_k1, v_k1, start_k2, v_k2)
  result = 'NO' if start_k1 > start_k2 && v_k1 >= v_k2 || start_k2 > start_k1 && v_k2 >= v_k1
  result = 'YES' if start_k1 == start_k2
  result ||= calculate_jumps(start_k1, v_k1, start_k2, v_k2)

  puts result
end

def calculate_jumps(start_k1, v_k1, start_k2, v_k2)
  result = 'NO'
  dist_k1 = start_k1
  dist_k2 = start_k2

  loop do
    dist_k1 += v_k1
    dist_k2 += v_k2

    if dist_k1 == dist_k2
      result = 'YES'
      break
    elsif dist_k1 > dist_k2 && v_k1 > v_k2 || dist_k2 > dist_k1 && v_k2 > v_k1
      break
    end
  end

  result
end

kangaroo(0, 3, 4, 2)
