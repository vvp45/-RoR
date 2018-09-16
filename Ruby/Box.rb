class Box 
	def initialize(w, h)
		@width = w
		@height = h
	end
	# accessor methods
	def printWidth
		@width
	end
	def printHeight
		@height
	end
	# setter methods
	def setWidth=(value)
		@width = value
	end
	def setHeight=(value)
		@height = value
	end
end

# crete an object
box = Box.new(5, 10)
# use setter methods
box.setWidth = 15
box.setHeight = 20
# use of accessor methods
wid = box.printWidth()
ht = box.printHeight()
puts "Width of box is #{wid}"
puts "height of box is #{ht}"

