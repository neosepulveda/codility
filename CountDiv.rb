# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a, b, k)
  # write your code in Ruby 2.2
  
  return (a % k == 0) ? (b/k) - (a/k) + 1 : (b/k) - (a/k)
end
