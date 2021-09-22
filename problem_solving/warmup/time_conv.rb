require 'time'

# Given a time in
# -hour AM/PM format, convert it to military (24-hour) time.
# Note: - 12:00:00AM on a 12-hour clock is 00:00:00 on a 24-hour clock.
# - 12:00:00PM on a 12-hour clock is 12:00:00 on a 24-hour clock.

# Input: A single string that represents a time in 12-hour clock format
# (i.e.: hh:mm:ssAM or hh:mm:ssPM).
#
# Ruby Time API class:
#   %r - 12-hour time (%I:%M:%S %p)
#   %R - 24-hour time (%H:%M)
#   %T - 24-hour time (%H:%M:%S)
def timeConversion(s)
  Time.strptime(s, '%I:%M:%S%p').strftime('%T')
end

puts timeConversion('12:01:00PM') == '12:01:00'
puts timeConversion('12:01:00AM') == '00:01:00'
puts timeConversion('07:05:45PM') == '19:05:45'
