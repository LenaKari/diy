# constants
CM = 10         # as timber is sold in mm


# bookshelf configuration

# crossboards
crossboardWidth = 27.0 * CM
crossboardHeight =  2.0 * CM
crossboardLength = 240.0 * CM
crossboardScrews = 16  #50mm

# vertical boards
verticalBoardWidth = 15.0 * CM
verticalBoardHeight = 2.0 * CM
verticalBoardLength = 170.0 * CM

# trim
trimWidth = 4.0 * CM
trimHeight = 4.0 * CM
trimLength = 15.0 * CM
trimCount = 4
trimBolts = 8  #76mm

# calculations - bolts and screws at 150% of minimum required
bolts76mm = trimBolts * 1.5
screws50mm = crossboardScrews * 1.5	

# calculations - trim
trimSlatTotalLength = trimLength * trimCount


# shopping list

# crossboards
console.log "(4) crossboards #{crossboardWidth} x #{crossboardHeight} x #{crossboardLength}"

# sideboards - 2 to be cut into 4 equal pieces each
console.log "(3) sideboards #{verticalBoardWidth} x #{verticalBoardHeight} x #{verticalBoardLength}"

# trim - to be cut into 4 equal pieces
console.log "(1) trim slat #{trimWidth} x #{trimHeight} x #{trimSlatTotalLength}"

# screws and bolts
console.log "(#{bolts76mm}) 76 mm bolts (and accompanying nuts)"
console.log "(#{screws50mm}) 50 mm screws"

