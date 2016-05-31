def solution(h)
	stack = []
	bricks = 0
	current = 0
	
	h << 0 #to finish the wall
	
	h.each do |height|
		
		if stack.empty?
			stack << height
		else
			while !stack.empty? && stack.last > height do
				bricks += 1
				
				current = stack.last
				stack.pop
				while current == stack.last do
					stack.pop
				end
			end
			stack << height
		end
	end
	return bricks
end
