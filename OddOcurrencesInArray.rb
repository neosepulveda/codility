# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2  
  frecuencies = a.each_with_object(Hash.new(0)) { |key, value| value[key] += 1 } 
  
  frecuencies.each do |key, value|
    if value.odd? then return key end
  end
end
