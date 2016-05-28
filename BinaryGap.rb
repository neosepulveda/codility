# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(n)
  # write your code in Ruby 2.2
  s = n.to_s(2)  
  zeroes =  s.split('1')  
  zeroes.pop if !n.odd?  
  return 0 if zeroes.empty?  
  zeroes.map { |x| x.length}.max
end
