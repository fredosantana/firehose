class Person
	attr_accessor :name

	def initialize(name)
    @name = name
  end

	def welcome
		"Hello #{name}!"
	end
end

person = Person.new("Wayne")

puts person.welcome
