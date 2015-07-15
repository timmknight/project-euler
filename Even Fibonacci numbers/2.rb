class Fibonacci

# Get array of fibonacci numbers up to 4million
	def getFibonacci
		#create array and define variables
		fibonacciNums = [1,2]
		count = 0
		iterations = fibonacciNums.length-1
		sum = 0

		while sum < 4000000
			iterations.times do	
					sum = fibonacciNums[count] + fibonacciNums[count+1]
					#check sum is under 4million otherwise you will get one number over 4million
					if sum <= 4000000
						fibonacciNums.push(sum)
					end
				count += 1
			end
		end
		getEvens(fibonacciNums)
	end

#Get only the even numbers
	def getEvens(fibonacciNums)
		evens = []
		fibonacciNums.each do |i|
			if i.even?
				evens << i
			end
		end
	sumOfEvens(evens)
	end

# get sum of evens
	def sumOfEvens(evens)
		puts	evens.inject{|sum,x| sum + x }
	end
end

answer = Fibonacci.new
answer.getFibonacci()