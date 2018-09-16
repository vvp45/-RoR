class Box
	# constructor method
	def initialize(w, h)
		@width, @height = w, h
	end
	# instance method 
	def getArea
		getWidth() * getHeight
	end
	# define private accessor
	def getWidth
		@width
	end
	def getHeight
		@height
	end
	# make as private
	private :getWidth, :getHeight
	# instance methd to print area of box
	 def printArea
		 @area = getWidth() * getHeight
		 puts "Big box area is: #{@area}"
	 end
	 # making protected method printArea
	 protected :printArea
end

# creating obejc of class
box = Box.new(5, 10)
result = box.getArea()
puts "area of Box is: #{result}"
# calling protected method
# we can't access this method.
# box.printArea() 
