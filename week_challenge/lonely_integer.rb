# https://www.hackerrank.com/challenges/one-week-preparation-kit-lonely-integer/problem?h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=one-week-preparation-kit&playlist_slugs%5B%5D=one-week-day-two

def lonelyinteger(a)
  hash = Hash.new(0)

  a.each { |num| hash[num] += 1 }

  # [2, 1] where 2 is the key, 1 is the times it repeated.
  hash.detect { |_key, val| val == 1 }[0]
end

p lonelyinteger([0, 0, 1, 2, 1]) == 2
