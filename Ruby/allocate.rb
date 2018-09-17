class InstanceMethod
	# constructor
	def initialize(a, b)
		@num1, @num2 = a, b
	end
	# instance method
	def calculate
		@num1 * @num2
	end
end

# creating object
instanceObject = InstanceMethod.new(5, 10)
# call instance method
result = instanceObject.calculate()
puts "Result is: #{result}"
# use allocate
object1 = InstanceMethod.allocate
result = object1.calculate() # error will be come
puts "Result is: #{result}"