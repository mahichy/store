class Cart
	attr_reader :items
	def initialize
		@items = []
	end
	def add_item product_id
		# item = @items.find { |item| item == product_id }
		# if item 
		#  item.quantity.increment
		# else
		# 	@items << product_id
		# end 
		item = @items.find { |item| item.product_id == product_id}
		if item
			item.increment
		else
			@items << CartItem.new(product_id)
		end
		# @items << CartItem.new(product_id)
	end
	def empty?
		@items.empty?
	end
end