puts 'Reading Celsius temperature value from value from data file...'
num = File.read('exercises/temp.dat')
celsius = num.to_i
fahrenheit = (celsius * 9 / 5) + 32
puts fahrenheit
puts "Saving result to output file 'temp.out'"
fh = File.new('exercises/temp.out', 'w')
fh.puts fahrenheit
fh.close