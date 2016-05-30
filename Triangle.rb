def solution(a)
  	if a.size < 3
  		return 0
  	end	
  
  	a.sort.each_cons(3) do |p, q, r|
    	return 1 if r < p + q
  	end
  	0
end
