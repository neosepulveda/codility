# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2  
  seen = {}

  max = a.max
  a.each do |v|
    seen[v] = true
  end
  
  seen.size == max && max == a.size ? 1 : 0
end
