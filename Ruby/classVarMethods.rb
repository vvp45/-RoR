# class variables and methods
class Box
	# class variables
	@@count = 0
	# constructor
	def initialize(w, h)
		@width = w
		@heiht = h

		@@count += 1
	end
	# class level method which can be call by using class name. (we can say same as like static method )
	def self.printCount()
		puts "Box count is: #{@@count}"
	end
end
# creating object
box = Box.new(10, 5)
box1 = Box.new(2, 4)

# call class mehods
Box.printCount()