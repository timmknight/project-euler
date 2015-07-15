count = 0 

(1...1000).each do |i|

	if i % 3 == 0 && i % 5 == 0
		count += i
	elsif i % 5 == 0 
		count += i
	elsif i % 3 == 0
		count += i
	end		
end

puts "Answer: #{count}"