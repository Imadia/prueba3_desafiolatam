#4.
class Complejo
	attr_accessor :x, :y
	def initialize(x, y)
		@x = x
		@y = y
	end
	
	def +(complejo)
		Complejo.new(@x + complejo.x, @y + complejo.y)
	end

	def to_s
		"(#{@x} + #{@y}*i)"
	end
end

c = Complejo.new(2,3) + Complejo.new(3,6)
puts c