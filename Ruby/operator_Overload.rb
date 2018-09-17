# super class
class Box
	def initialize(w, h)
		@width, @height = w, h
	end
	# + opertor overload
	 def def +(x)
	 	Box.new(@width + x.width, @height + x.height)
	end
	# define unary minus operator.
	def -@
		Box.new(-@width, -@height)
	end

	def *(Scaler)
		puts Box.new(@width * scaler, @height * scaler)
	end
end


