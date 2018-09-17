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
	def printArea
		@area = @width * @height
	end
end

box = BigBox.new(10, 5)
puts "base class: #{box.printArea()}"
puts "sUPER class: #{box.getArea()}"