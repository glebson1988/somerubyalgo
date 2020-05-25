# If all the numbers from 1 to 1000 (one thousand) inclusive were
# written out in words, how many letters would be used?
require 'humanize'

no_space_array, total = [], 0
(1..1000).to_a
         .map(&:humanize)
         .each { |word| no_space_array << word.delete(' ')
         .delete('-') }
         .each { |element| total += element.length }
p total
