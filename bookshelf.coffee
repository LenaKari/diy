# constants
CM = 10         # as timber is sold in mm


# bookshelf configuration

crossboardWidth = 27.0 * CM
crossboardHeight =  2.0 * CM
crossboardLength = 240.0 * CM

sideboardWidth = 15.0 * CM
sideboardHeight = 2.0 * CM
sideboardLength = 170.0 * CM

trimWidth = 4.0 * CM
trimHeight = 4.0 * CM
trimLength = 15.0 * CM
trimCount = 4


# calculations - trim
trimSlatTotalLength = trimLength * trimCount


# shopping list

# crossboards
console.log "(4) crossboards #{crossboardWidth} x #{crossboardHeight} x #{crossboardLength}"

# sideboards - 2 to be cut into 4 equal pieces each
console.log "(3) sideboards #{sideboardWidth} x #{sideboardHeight} x #{sideboardLength}"

# trim - to be cut into 4 equal pieces
console.log "(1) trim slat #{trimWidth} x #{trimHeight} x #{trimSlatTotalLength}"
