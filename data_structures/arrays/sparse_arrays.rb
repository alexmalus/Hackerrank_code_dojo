# https://www.hackerrank.com/challenges/sparse-arrays/problem

def matchingStrings(strings, queries)
  sum = []
  queries.each do |query|
    sum << strings.reduce(0) { |sum, string| query == string ? sum += 1 : sum }
  end

  sum
end

strings = %w[aba baba aba xzxb]
queries = %w[aba xzxb ab]

p matchingStrings(strings, queries) == [2, 1, 0]
