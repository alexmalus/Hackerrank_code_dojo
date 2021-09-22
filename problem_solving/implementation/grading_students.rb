require 'bigdecimal'

# https://ruby-doc.org/stdlib-2.5.1/libdoc/bigdecimal/rdoc/BigDecimal.html
# https://stackoverflow.com/questions/51274453/ruby-round-integer-to-nearest-multiple-of-5/51292434
#
# Student 1 received a 73, and the next multiple of 5 from 73 is 75.
# Since 75 - 73 < 3, the student's grade is rounded to 75.
# 67 -> 67
# 38 -> 40
# 33 -> 33
def gradingStudents(grades)
  grades.collect! do |grade|
    if grade < 38
      grade
    else
      next_grade = up_to_nearest_5(grade)
      next_grade - grade < 3 ? next_grade : grade
    end
  end

  grades.each { |grade| puts grade }
end

# def up_to_nearest_5(num)
#   (BigDecimal(num) / 5).ceil * 5
# end

# Or:
def up_to_nearest_5(num)
  (num.to_f / 5).ceil * 5
end

gradingStudents([73, 67, 38, 33])