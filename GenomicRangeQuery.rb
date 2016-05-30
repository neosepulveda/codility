def solution(s, p, q)
  letters = { 'A' => 1, 'C' => 2, 'G' => 3, 'T' => 4 }
  n = s.size

  prefix_sums = Hash.new { |h, k| h[k] = Array.new(n + 1, 0) }

  letters.keys.each do |letter|
    for i in 1..n
      prefix_sums[letter][i] = prefix_sums[letter][i - 1]
      prefix_sums[letter][i] += 1 if s[i-1] == letter
    end
  end

  output = []
  p.zip(q).each do |from, to|
    letters.keys.each do |letter|
      if prefix_sums[letter][from] != prefix_sums[letter][to+1]
        output << letters[letter]
        break
      end
    end
  end

  output
end
