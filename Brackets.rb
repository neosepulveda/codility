# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(s)
  # write your code in Ruby 2.2
  
  opposite = { "}" => "{", "]" => "[", ")" => "(" }
	open_char = { "{" => true, "[" => true, "(" => true }

	stack = []
	
	s.downcase.chars.each do |c|
		if open_char[c] then
			stack << c
		elsif opposite[c] == stack.last then
			stack.pop
		else
			return 0
		end
	end
	
	return stack.empty? ? 1 : 0
end
