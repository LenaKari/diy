
hexToDec = (input) ->

	#base case
	newValue = input.toLowerCase()
	
	if newValue.length is 1
		if '0'.charCodeAt() <= newValue.charCodeAt() <= '9'.charCodeAt()  # for the value of characters 0-9			
			return newValue.charCodeAt() - '0'.charCodeAt() 

		else if 'a'.charCodeAt() <= newValue.charCodeAt() <= 'f'.charCodeAt()  # for the value of characters a-f
			return newValue.charCodeAt() - 'a'.charCodeAt() + 10

		else  # for all invalid characters
			throw "input contains an invalid character"

   #recursive case

	else
               	lastDigit = newValue.slice(newValue.length-1, newValue.length)
                valueLastDigit = hexToDec(lastDigit)

       	        head = newValue.slice(0, newValue.length-1)
               	valueHead = hexToDec(head)


                return  16 * valueHead + valueLastDigit



console.log hexToDec '2AR3'
#console.log hexToDec '1'
#console.log hexToDec '51'
#console.log hexToDec '123'
#console.log hexToDec '2AF3'
