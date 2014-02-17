hexToDec = (input) ->

        #base case

        newValue = input.toLowerCase()

        if newValue.length is 1
                if newValue.charCodeAt() >= 'a'.charCodeAt()
                        return newValue.charCodeAt() - 'a'.charCodeAt() + 10
                else
                        return newValue.charCodeAt() - '0'.charCodeAt()


        #recursive case

        else
                lastDigit = newValue.slice(newValue.length-1, newValue.length)
                valueLastDigit = hexToDec(lastDigit)

                head = newValue.slice(0, newValue.length-1)
                valueHead = hexToDec(head)


                return  16 * valueHead + valueLastDigit


console.log hexToDec '1'
console.log hexToDec '51'
console.log hexToDec '123'
console.log hexToDec '2AF3'
