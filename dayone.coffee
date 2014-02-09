#  Using a recursive approach, write a function in CoffeeScript that calculates y^x, assuming x is an integer >= 0

#  Function
result = (y,x) ->
  if x is 0 then return "1"      # base case
  else return y*result(y,x-1)    # recursive case



console.log result(2,4)
