# Complete the 'countApplesAndOranges' function below.
# [start_house_loc, end_house_loc] = [7, 10]
# apple_loc = 4
# orange_loc = 12
# apples = [2, 3, -4]
# oranges = [3, -2, -4]
def countApplesAndOranges(start_house_loc, end_house_loc, apple_loc, orange_loc, apples, oranges)
  apples.collect! { |apple| apple_loc + apple }.keep_if { |apple| (start_house_loc..end_house_loc).include? apple }
  oranges.collect! { |orange| orange_loc + orange }.keep_if { |orange| (start_house_loc..end_house_loc).include? orange }

  puts apples.count
  puts oranges.count
end

