# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2
  
  counter = 0
	total = 0
	
	a.each do |car|
		car == 0 ? counter += 1 : total += counter
	end
	
	return total > 1_000_000_000 ? -1 : total
end

#THANKS MAIO FOR FINDING A SIMPLE SOLUTION
