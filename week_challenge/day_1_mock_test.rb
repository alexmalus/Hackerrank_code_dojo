# works only with odd
def findMedian(arr)
  arr.sort[arr.size / 2]
end

# for both even and odd.
def median(array)
  return if array.empty?
  sorted = array.sort
  len = sorted.size
  (sorted[(len - 1) / 2] + sorted[len / 2]) / 2.0
end

# p median([5,6,7,17,2])
p median([5,6,17,2])
