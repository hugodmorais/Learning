puts 'Reading Fahrenheit temperature value from value from data file...'
num = File.read('exercises/temp.dat')
fahrenheit = num.to_i
celsius = (fahrenheit - 32) / 1.8
puts celsius
puts "Saving result to output file 'temp.out'"
fh = File.new('exercises/temp.out', 'w')
fh.puts celsius
fh.close