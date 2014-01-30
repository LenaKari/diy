# constants

CM = 1.0
INCH = 2.54

# table configuration
tableWidth = 274 / 3 * CM
tableLength = 152.5 * CM
tableHeight =  75 * CM

lipSize = 2.75 * INCH

apronThickness = 1.0  * INCH
apronHeight = 4.0  * INCH

supportSlatWidth = 2.0 * INCH
supportSlatHeight = 2.0 * INCH
supportSlatSpacing = 10.0 * INCH

tableTopBoardWidth = 22.5 * CM
tableTopBoardThickness = 1 * INCH

legWidth = 5 * CM
legDepth = 5 * CM

# calculations - apron
longApronSlat = tableLength - 2 * (lipSize + apronThickness)
shortApronSlat = tableWidth - 2 * lipSize

# calculations - supporting slats
supportSlatLength = tableWidth - 2 * (lipSize + apronThickness)
supportSlatCount = round(longApronSlat / supportSlatSpacing) - 1

# calculations - table top
tableTopBoardCount = tableWidth / tableTopBoardWidth 

# calculations - legs
legLength = tableHeight - tableTopBoardThickness

# calculations - screws
screwCount = supportSlatCount * 2
screwCount += tableTopBoardCount * supportSlatCount * 3
screwLength = 2 * INCH
screwCount += 4 * 2 # 2 per corner for apron

legScrewCount = 2 * 4 # two per leg
legScrewlength = legWidth + apronThickness + 1.5 * CM
washerCount = legScrewCount * 2

# crossSupportScrewLength = 2 INCH

# shopping list

# longApronSlat
print "2x apron slat {}x{}x{}".format(longApronSlat, apronHeight, apronThickness)
# shortApronSlat
print "2x apron slat {}x{}x{}".format(shortApronSlat, apronHeight, apronThickness)
# supportSlat
print "{}x support slat {}x{}x{}".format(supportSlatCount, supportSlatLength, supportSlatWidth, supportSlatHeight)

# table top
print "{}x board {}x{}x{}".format(tableTopBoardCount, tableLength, tableTopBoardWidth, tableTopBoardThickness)

# legs
print "4x legs {}x{}x{}".format(legLength, legDepth, legWidth)

# cross supports
print "4x cross supports, approx {}x{}x{}".format(12 * INCH, 2 * INCH, 2 * INCH)

