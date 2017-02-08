#5. 
class T
	def initialize
		@numero = 0
	end
	
	def method1
		puts rand()
	end
end

class Q < T
	def initialize
		@azar = method1
	end
end

q = Q.new