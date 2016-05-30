# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2
  
  n = a.size
	
  if a.size == 3 then
  	 return a[0] * a[1] * a[2]
  end
  	
  a.sort!  	
  tmp1 = a.last(3).inject(:*)  	
  tmp2 = a[0] * a[1] * a.last
  
  return [tmp1, tmp2].max
end
