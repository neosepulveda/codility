# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(x, a)
  # write your code in Ruby 2.2
  
  fallen_leaves = {}

  a.each_with_index do |leaf, i|
    fallen_leaves[leaf] = true
    return i if fallen_leaves.size == x
  end

  -1
end
