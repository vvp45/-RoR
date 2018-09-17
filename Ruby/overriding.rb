# super class
class Box
	def initialize(w, h)
		@width, @height = w, h
	end
	 def getArea
	 	@width * @height
	end
end
# child class
class BigBox < Box
	# overriding method
	def getArea
		@area = @width + @height
	end
end

box = BigBox.new(10, 5)
puts "Method overriding : #{box.getArea()}" # calling base class method.
# puts "Super class: #{box.getArea()}" # calling super class method