# frozen_string_literal: true

# when n = 4
# (3 spaces) and #
# (2 spaces) and ##
# 1 space and ###
####

def staircase(n)
  stairs = []
  n.times { |i| stairs << ' ' * (n - i - 1) + '#' * (i + 1) }
  puts stairs.join("\n")
end

staircase(6)