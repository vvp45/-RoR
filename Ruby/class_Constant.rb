class Bike
	# class constatnt values
	BIKE_NAME = "KTM"
	KTM_PRICE = 150000

	# constructor
	def initialize(a, b)
		@num1, @num2 = a, b
	end
	# instance method
	def getValue
		@num1 * @num2
	end
end

# object create
bike = Bike.new(10, 5)
puts "Result is: #{bike.getValue()}"

# Access the class constant value.
puts "class constant value1: #{Bike::BIKE_NAME}"
puts "class constant value2: #{Bike::KTM_PRICE}"

