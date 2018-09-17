class A
	# constructor
	def initialize(a, b)
		@num1, @num2 = a, b
	end
	# get the value(getter)
	def getNum1
		@num
	end
	# get the value (getter)
	def getNum2
		@num2
	end
	# set num1 value(Setter)
	def setNum1=(value)
		@num1 = value
	end
	# set num2 value(Setter)
	def setNum2=(value)
		@num2 = value
	end
end
# create a object
a = A.new(5, 10)
# check object is frozen or not
a.freeze
if( a.frozen? )
	puts "a object is frozen object"
else
	puts "a object is not frozen object"
end

# set the value
a.setNum1 = 20
a.setNum2 = 30
# access the value
x = a.getNum1()
y = a.getNum2()

puts "x value is: #{x}"
puts "y value is: #{y}"