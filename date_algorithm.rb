# How many Sundays fell on the first of the month during
# the twentieth century (1 Jan 1901 to 31 Dec 2000)?
require 'date'

start_date = Time.local(1901)
end_date = Time.local(2000, 12, 31)
sunday_counter = 0

while end_date >= start_date
  if end_date.sunday?.&end_date.strftime('%d') == '01'
    sunday_counter += 1
  end
  end_date -= 86400
end

puts sunday_counter
