def print_conditionally
  print "Enter an integer: "
  n = gets.to_i
  if n > 0
    puts "Your number is positive."
  elsif n < 0
    puts "Your number is negative."
  else
    puts "Your number is zero."
  end
end

print_conditionally


########################################################

# if nil; puts "Ain't gonna happen."; end
# => nil

########################################################å
x = 1
if x > 50
  if x > 100
    puts "Big number"
  else
    puts "Medium number"
  end
end

########################################################

x = 1
if x < 0
  "negative"
elsif x > 0
  "positive"
else
  "zero"
end


########################################################

name = "David A. Black"
if m = /la/.match(name)         #1
  puts "Found a match!"
  print "Here's the unmatched start of the string: "
  puts m.pre_match
  print "Here's the unmatched end of the string: "
  puts m.post_match
else
  puts "No match"
end

########################################################

# def quit_or_not
#   print "Exit the program? (yes or no): "
#   answer = gets.chomp
#   case answer
#   when "yes"
#     puts "Good-bye!"
#     exit
#   when "no"
#     puts "OK, we'll continue"
#   else
#     puts "That's an unknown answer -- assuming you meant 'no'"
#   end
#   puts "Continuing with program...."
#   quit_or_not
# end
# quit_or_not

########################################################

# if "yes" === answer
#   puts "Good-bye!"
#   exit
# elsif "no" === answer
#   puts "OK, we'll continue"
# else
#   puts "That's an unknown answer—assuming you meant 'no'"
# end

########################################################

# case
# when user.first_name == "David", user.last_name == "Black"
#   puts "You might be David Black."
# when Time.now.wday == 5
#   puts "You're not David Black, but at least it's Friday!"
# else
#   puts "You're not David Black, and it's not Friday."
# end

########################################################

# if user.first_name == "David" or user.last_name == "Black"
#   puts "You might be David Black."
# elsif Time.now.wday == 5
#   puts "You're not David Black, but at least it's Friday!"
# else
#   puts "You're not David Black, and it's not Friday."
# end


########################################################

# loop { puts "Looping forever!" }
# loop do
#   puts "Looping forever!"
# end

# n = 1
# loop do
#   n = n + 1
#   next unless n == 10
#   break
# end

########################################################

n = 1
while n < 11
  puts n
  n = n + 1
end
puts "Done!"

########################################################

n = 1
until n > 10
  puts n
  n = n + 1
end
puts "Done!"

########################################################

n = 1
until n > 10
  puts n
  n = n + 1
end

########################################################

a = 1
begin
  a += 1
end until true
nil
a
2


# 6.3.4

array = [1,2,3]
# => [1, 2, 3]
array.map {|n| n * 10 }               #1
# => [10, 20, 30]
array.map do |n| n * 10 end           #2
# => [10, 20, 30]
puts array.map {|n| n * 10 }          #3
10
20
30
# => nil
puts array.map do |n| n * 10 end      #4
   #<Enumerator:0x00000101132048>
# => nil

# 6.3.5

5.times { puts "Writing this 5 times!" }    #1
# Writing this 5 times!
# Writing this 5 times!
# Writing this 5 times!
# Writing this 5 times!
# Writing this 5 times!
# => 5                                           #2

5.times {|i| puts "I'm on iteration #{i}!" }
# I'm on iteration 0!
# I'm on iteration 1!
# I'm on iteration 2!
# I'm on iteration 3!
# I'm on iteration 4!
# => 5

class Integer
  def my_times
    c = 0
    puts "c = 0"
    puts "until c == #{self}..."    #1
    until c == self
      yield c
      c += 1
    end
    self                            #2
  end
end
ret = 5.my_times {|i| puts "I'm on iteration #{i}!!!!" }
puts ret

#####################

def block_local_parameter
  x = 100
  [1,2,3].each do |x|
    puts "Parameter x is #{x}"
    x = x + 10
    puts "Reassigned to x in block; it's now #{x}"
  end
  puts "Outer x is still #{x}"
end

1
11

2
12

3

13

100

########################################################

class Temperature
  def Temperature.c2f(celsius)
    binding.irb
    celsius * 9.0 / 5 + 32
  end
  def Temperature.now
    rand(0..100)
  end
end
celsius = [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
fahrenheit = Temperature.now
puts "The temperature is now: #{fahrenheit} degrees Fahrenheit."
puts "Celsius\tFahrenheit"
celsius.each do |c|
  fahrenheit = Temperature.c2f(c)
  puts "#{c}\t#{fahrenheit}"
end
puts fahrenheit

########################################################


