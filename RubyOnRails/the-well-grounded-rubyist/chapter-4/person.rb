class Person
  PEOPLE = []
  attr_reader :name, :hobbies, :friends

  def initialize(name)
    @name = name
    @hobbies = []
    @friends = []
    PEOPLE << self
    puts Person::PEOPLE
  end

  def has_hobby(hobby)
    @hobbies << hobby
  end

  def has_friends(friend)
    @friends << friend
  end

  def self.list_people
    PEOPLE.each do |person|
      puts "Name: #{person.name}, Hobbies: #{person.hobbies.join(', ')}, Friends: #{person.friends.map(&:name).join(', ')}"
    end
  end
end

p = Person.new('hugo')
p.has_hobby('hobby')
puts p.hobbies

# p1 = Person.new('hugo1')
# p1.has_hobby('hobby1')
# puts p1.hobbies

Person.list_people