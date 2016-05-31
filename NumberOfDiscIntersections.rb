# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2
  
  event = Hash.new{|h,k| h[k] = {:start => 0, :stop => 0}}
	
  a.each_index {|i|  
    event[i - a[i]][:start] += 1
    event[i + a[i]][:stop ] += 1
  }   
   
  sorted_events = (event.sort_by {|index, value| index}).map! {|n| n[1]}
   
  past_start = 0  
  intersect = 0  
  sorted_events.each {|e|  
    intersect += e[:start] * (e[:start]-1) / 2 +  
    e[:start] * past_start  
    past_start += e[:start]  
    past_start -= e[:stop]
    
    if intersect > 10_000_000 then
      return -1
    end
  } 
  return intersect
end
