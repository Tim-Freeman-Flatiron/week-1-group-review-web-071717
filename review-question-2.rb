# Finish the implementation of the Car class so it can behave as shown below

class Car
	attr_accessor :make, :model

	CARS = []

	def initialize(make, model)
		@make = make
		@model = model
		CARS << self
	end

	def self.all
		CARS
	end

	def drive
		"VROOOOOOOOOOOOM!"
	end

	def make
		self.specs[:make]
	end

	def model
		self.specs[:model]
	end

end

# car = Car.new("volvo", "lightening")
# puts car.make
# #=> "volvo"
# puts car.model
# #=> "ligthening"

# puts car.drive
# # => "VROOOOOOOOOOOOM!"

# puts Car.all
# #=> [car1, car2, car3]

# BONUS:

Car.new(make: "volvo", model: "lightening")

puts car.make
#=> "volvo"
puts car.model
#=> "ligthening"
