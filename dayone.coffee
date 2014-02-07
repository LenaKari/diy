#  Using a recursive approach, write a function in CoffeeScript that calculates 2^x.


#  Function
f = (x) -> (2**(x-1))*2


#  Define x
x = 5


console.log f(x)
