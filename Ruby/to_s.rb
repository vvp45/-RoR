class Box
	def initialize(w, h)
		@width, @height = w, h
	end
	# define to_s method
	def to_s
		"(w:#{@width}, h:#{@height})"  # string formating to the object.
	end
end

# create object Box class
box = Box.new(5, 10)

# to_s method call
puts "String representation of Box object is: #{box}"