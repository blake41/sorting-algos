class MergeSort

	def sort(array)
		# if list is size 1 already sorted
		return array if array.size <= 1
		# split list into two parts
		left, right = [], []
		middle = array.size / 2
		for i in 0...(middle)
			left << array[i]
		end
		for i in middle...array.count
			right << array[i]
			i += 1
		end
		left = self.sort(left)
		right = self.sort(right)
		return merge(left,right)
	end

	def merge(left, right)
		result = []
		while left.size > 0 || right.size > 0
			if left.size > 0 and right.size > 0
				if left.first <= right.first
					result << left.shift
				else
					result << right.shift
				end
			elsif left.size > 0
				result << left.shift
			elsif right.size > 0
				result << right.shift
			end
		end
		return result
	end

end