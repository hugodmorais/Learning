module MyFirstModule
  def ruby_version
     system("ruby -v")
  end
end

class ClassToInclude
  def hello
    puts "Hello from ClassToInclude!"
  end
end

class ModuleTester < ClassToInclude
  include MyFirstModule
end

obj = ModuleTester.new
# obj.ruby_version
obj.hello