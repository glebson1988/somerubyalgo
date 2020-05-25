# the sum of the digits of the number 2 to the 1000th power
p (2 ** 1000).to_s.split(//).map(&:to_i).inject(:+)
