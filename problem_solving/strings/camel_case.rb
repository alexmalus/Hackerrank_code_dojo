# https://www.hackerrank.com/challenges/camelcase/problem?h_r=next-challenge&h_v=zen

def camelcase(s)
  s.scan(/(\p{Upper})+/).count + 1
end

puts camelcase('saveChangesInTheEditor')
# puts camelcase('saveChangesInTheEditor') == 5
