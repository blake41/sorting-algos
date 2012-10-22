require 'debugger'
class BubbleSort

	attr_accessor :array, :swaps, :sorted

	def initialize(array)
		self.array = array
		self.swaps = 0
	end

	def sort
		array = self.array
		until self.sorted == true
			# go through the whole array once from array[0] to array[count -2]
			# each time we make a swap record the swap and we know we have to go 
			# around the loop again, exit when we dont swap at all
			# reset swaps and i to 0
			self.swaps = 0
			i = 0
			while i <= (array.count - 2)
				if array[i] > array[i + 1]
					array[i], array[i + 1] = array[i + 1], array[i]
					self.swaps += 1
				end
				i += 1
			end
			
			if self.swaps > 0
				self.sorted = false
			else 
				self.sorted = true
			end
		end
		return array
	end

end