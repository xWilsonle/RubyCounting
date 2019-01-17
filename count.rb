
#Gets the name for the user
def getName
	puts "What is your name?"
	$inputName = gets
end

#Gets the number for the user
def getNumber
	puts("What is your number?")
	begin
		$inputNumber = Integer(gets.chomp)
	rescue
		puts("Please enter a valid number")
		retry
	end
end

#gets the increment
def getIncrement
	puts("What is your increment?")
	begin
		$inputIncrement = Integer(gets.chomp)
	rescue
		puts("Please input a valid number")
		retry
	end
	if $inputIncrement > $inputNumber || $inputIncrement == 0
		puts("Your increment cannot be bigger than your number")
		getIncrement
	end
end

#prints out the results of the inputs
def printResult
	puts("Hello " + $inputName)
	printNumberSequence
end

#prints out the number sequence
def printNumberSequence
	i = 0
	loop do
		print(i)
		print(" ")
		i+= $inputIncrement
		if i > $inputNumber
			break
		end
	end
end

def getInputs
	getName
	getNumber
	getIncrement
end


#The Main Code
getInputs
printResult
