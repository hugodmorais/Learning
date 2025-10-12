class C
  a = 1          #1
  def local_a
    a = 2        #2
    puts a
  end
  puts a         #3
end
c = C.new
c.local_a        #4