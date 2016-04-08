class TodoList

	def initialize(array)
		@array = array
	end  

	def get_items
		@array
	end

	def add_item(item)
		@array << item
	end

	def delete_item(item)
		get_items.delete(item)
		@array
	end

	def get_item(int)
		@array = @array.at(int)
	end
		


end