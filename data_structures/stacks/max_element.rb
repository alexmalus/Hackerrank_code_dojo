# https://www.hackerrank.com/challenges/maximum-element/problem

# operations looks like:
# ["1 97", "2", "1 20", "2", "1 26", "1 20", "2", "3", "1 91", "3"]

def getMax(operations)
  stack = []
  max = [0]
  prints = []

  operations.each do |op|
    cmd = op.split(' ').map(&:to_i)
    if cmd.size == 1
      if cmd == [2]
        el = stack.delete_at(-1)
        max.delete(el) unless stack.include?(el)
      else
        prints << max.last
      end
    else
      stack.push cmd[1]
      max << cmd[1] if max.last < cmd[1]
    end
  end

  prints
end

p getMax(["1 97", "2", "1 20", "2", "1 26", "1 20", "2", "3", "1 91", "3"])
