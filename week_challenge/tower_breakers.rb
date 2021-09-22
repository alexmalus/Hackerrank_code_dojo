# https://www.hackerrank.com/challenges/one-week-preparation-kit-tower-breakers-1/problem?h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=one-week-preparation-kit&playlist_slugs%5B%5D=one-week-day-three

# int n: the number of towers
# int m: the height of each tower
# int: the winner of the game (1 for P1 or 2 for P2)
# P1 always starts first.
# both players always choose optimally -> reduce towers to 1 always..
def towerBreakers(n, m)
  m == 1 || n.even? ? 2 : 1
end

