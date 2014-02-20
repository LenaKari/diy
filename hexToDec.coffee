hexToDec = (input, position = 0) ->

	#base case

	newValue = input.toLowerCase()

	if newValue.length is 1
		if '0'.charCodeAt() <= newValue.charCodeAt() <= '9'.charCodeAt()  # for the value of characters 0-9
			return newValue.charCodeAt() - '0'.charCodeAt()

		else if 'a'.charCodeAt() <= newValue.charCodeAt() <= 'f'.charCodeAt()  # for the value of characters a-f
			return newValue.charCodeAt() - 'a'.charCodeAt() + 10

		else  # for all invalid characters
			myError = new Error ("Input contains an invalid character - " + newValue.toUpperCase())
			throw myError + ". Position (from right): " + position

	#recursive case

	else
               	lastDigit = newValue.slice(newValue.length-1, newValue.length)
                valueLastDigit = hexToDec(lastDigit, position)

		head = newValue.slice(0, newValue.length-1)
		valueHead = hexToDec(head, position + 1)

		return  16 * valueHead + valueLastDigit



console.log hexToDec '23AR1288BE2P0267'
#console.log hexToDec '51'
