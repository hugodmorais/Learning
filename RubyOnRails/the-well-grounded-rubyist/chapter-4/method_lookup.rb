module M
  def report
    puts "'report' method in module M"
  end
end

class C
  include M

  def report
    puts "C"
  end
end

class D < C
  # def report
  #   puts "D"
  # end
end

obj = D.new
obj.report