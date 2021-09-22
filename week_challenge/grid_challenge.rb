# https://www.hackerrank.com/challenges/one-week-preparation-kit-grid-challenge/problem?h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=one-week-preparation-kit&playlist_slugs%5B%5D=one-week-day-four

# grid is an array of strings.
# each string can be seen as a row.
# first sort the rows out if needed, then compare element by element in columns.
# 'YES' if sorted, 'NO' if not.
def gridChallenge(grid)
  # abcdefghijklmnopqrstuvwxy
  final_str = grid.map! { |str| str.chars.sort.join }.join
  last_char =

  final_str.each_char { |char| }
end

grid = ['ebacd', 'fghij', 'olmkn', 'trpqs', 'xywuv']
p gridChallenge(grid)
