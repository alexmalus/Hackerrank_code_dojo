# https://www.hackerrank.com/challenges/migratory-birds/problem

def migratoryBirds(arr)
  types = { 1 => 0, 2 => 0, 3 => 0, 4 => 0, 5 => 0 }

  arr.each { |bird_type| types[bird_type] += 1 }
  highest_freq_idx = 1

  types.each_pair { |key, val| highest_freq_idx = key if types[highest_freq_idx] < val }

  highest_freq_idx
end

print migratoryBirds([1, 4, 4, 4, 5, 3])
