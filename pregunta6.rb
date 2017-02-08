#6.
module Priceable
	attr_accessor :price
	def discoutend_price(discount)
		@price - @price * discount
	end
end

module Stockable
	attr_accessor :stock
	def has_stock?
		if @stock > 0
			true
		else
			false
		end
	end
end
	
class Product
	include Priceable, Stockable
	def initialize(price, stock)
		@price = price
		@stock = stock
	end
end

p = Product.new(2000,0)
puts p.has_stock?