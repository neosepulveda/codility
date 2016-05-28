# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2
  seen = {}

  a.each do |number|
    seen[number] = true
  end

  max = a.max

  for i in 1..(max + 1)
    return i unless seen[i]
  end

  1
end
