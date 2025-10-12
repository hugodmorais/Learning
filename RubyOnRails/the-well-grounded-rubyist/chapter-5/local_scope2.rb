class C
  def x(value_for_a,recurse=false)                  #1
    a = value_for_a                                 #2
    print "Here's the inspect-string for 'self':"   #3
    p self                                          #3
    puts "And here's a:"                            #3
    puts a                                          #3
    if recurse                                      #4
      puts "Calling myself (recursion)..."
      x("Second value for a")                       #5
      puts "Back after recursion; here's a:"        #6
      puts a
    end
  end
end
c = C.new
c.x("First value for a", true)                      #7