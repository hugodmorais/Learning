print 'Reading Celsius temperature value from value from data file...'
num = File.read('temp.dat')
celsius = num.to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "The fahrenheit equivalent is "
puts fahrenheit
puts "."