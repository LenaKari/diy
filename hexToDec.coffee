
hexToDec = (input) ->

	#base case

if input.length is 1
	if input[0] is '1'
		return 1
	else	
		return 0


	#recursive case

else

	newValue = input.toLowerCase()
	lastDigit = newValue.slice(newValue.length-1, newValue.length)

	if lastDigit.charCodeAt() > 96
		return lastDigit.charCodeAt()-87
	else
		return lastDigit.charCodeAt()-48

	head = newValue.slice(0, newValue.length-1)
	valueHead = hexToDec(head)
     

	return  16 * valueHead + valueLastDigit


console.log hexToDec '1'
