hexToDec = (input, position = 0) ->


	if input.length is 1
		#base case
	
		newValue = input.toLowerCase()

		if '0'.charCodeAt() <= newValue.charCodeAt() <= '9'.charCodeAt()  # for the value of characters 0-9
			return newValue.charCodeAt() - '0'.charCodeAt()
		else if 'a'.charCodeAt() <= newValue.charCodeAt() <= 'f'.charCodeAt()  # for the value of characters a-f
			return newValue.charCodeAt() - 'a'.charCodeAt() + 10
		else  # for all invalid character
			myError = new Error("Input contains an invalid character - #{input}. Position (from right): #{position}")
			myError.invalidCharacter = input
			myError.position = position
			throw myError
	else
		#recursive case
		lastDigit = input.slice(input.length-1, input.length)
		valueLastDigit = hexToDec(lastDigit, position)
		head = input.slice(0, input.length-1)
		valueHead = hexToDec(head, position + 1)
		return  16 * valueHead + valueLastDigit

try
	console.log hexToDec '23a12r88be290267'
catch myError
	console.log "Entrada contiene un carácter no válido - #{myError.invalidCharacter}. Posición (de derecha): #{myError.position}"
	console.log myError.message


#console.log hexToDec '51'
