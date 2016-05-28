# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2
  left, right = 0, a.reduce(:+)
  min = 1 / 0.0
  n = a.length
  
  a.each_index do |i|
    break if i == n-1
    left += a[i]
    right -= a[i]
    
    min = [min, (left-right).abs].min
  end
  min
end
