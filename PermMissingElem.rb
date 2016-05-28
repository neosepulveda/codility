# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2
  n = a.length
  
  counter = Array.new(n+1, 0)
  
  a.each do |x|
    counter[x-1] += 1
  end
  
  return counter.index { |x| x == 0 } + 1
end
