
binToDec = (input) ->
    # base case: there's only one digit
    if input.length is 1
        if input[0] is '1'
            return 1
        else
            return 0
    else
        # otherwise we split the problem into two sub poblems:
        
        # sub problem 1: what is the value for only the last digit
        # (we know we can solve this with the base case)
        lastDigit = input.slice(input.length-1, input.length)
        valueLastDigit = binToDec(lastDigit)
        
        # sub problem 2: what is the value of the head (everything but the last digit)?
        head = input.slice(0, input.length-1)
        # as usual, instead of actually solving this sub problem, 
        # we just defer that to the handy function that we are
        valueHead = binToDec(head)

        # combining the sub problems' results
        # in binary, the head is twice as significant as the last bit
        return  2 * valueHead + valueLastDigit


console.log binToDec '1'
console.log binToDec '1001'
console.log binToDec '100000'
console.log binToDec '1000000000000000'
console.log binToDec '1111111111111111'
console.log binToDec '11111111111111111111111111111111'

