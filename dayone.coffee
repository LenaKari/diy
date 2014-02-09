#  Using a recursive approach, write a function in CoffeeScript that calculates y^x, assuming x is an integer >= 0


#  Define variables
x = 5
y = 2


#  Function
result = (y,x) ->
  if x is 0 then console.log "1"      # first base case
  else if x is 1 then console.log y   # second base case
  else console.log y*result(y,x-1)    # recursive case



result
