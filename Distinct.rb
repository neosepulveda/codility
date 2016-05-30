# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2
  
  counter = 0
  current_value = nil
  	
  a.sort.each_with_index do |item, i|
    if current_value != item then
    	current_value = item
    	counter += 1
    end
  end
  	
  return counter
end
