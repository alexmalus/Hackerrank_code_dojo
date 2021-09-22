# The function is expected to return an INTEGER_ARRAY.
# 17 28 30
# 99 16 8
# 2 1
# Comparing the elements, so Bob receives a point.
# Comparing the and elements, and so Alice receives two points.
def compareTriplets(a, b)
  al = 0
  bo = 0

  3.times do |i|
    next if a[i] == b[i]

    a[i] > b[i] ? al += 1 : bo += 1
  end
  [al, bo]
end
