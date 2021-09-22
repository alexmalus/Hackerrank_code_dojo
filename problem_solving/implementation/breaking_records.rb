# https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem

# scores is an array of points scored in game.
# wants: [least, most]
def breakingRecords(scores)
  return [0, 0] if scores.empty? || scores.size == 1

  first_score = scores.shift
  # added as reference, won't count in the end.
  least = [first_score]
  most = [first_score]

  scores.each do |score|
    least.push(score) if least.last > score
    most.push(score) if most.last < score
  end

  most.shift
  least.shift
  [most.count, least.count]
end

print breakingRecords([10, 5, 20, 20, 4, 5, 2, 25, 1])
