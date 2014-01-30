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
supportSlatCount = Math.round(longApronSlat / supportSlatSpacing) - 1

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

# crossSupportScrewLength = 

# shopping list

# longApronSlat
console.log "2x apron slat #{longApronSlat}x#{apronHeight}x#{apronThickness}"

# shortApronSlat
console.log "2x apron slat #{shortApronSlat}x#{apronHeight}x#{apronThickness}"
# supportSlat
console.log "#{supportSlatCount}x support slat #{supportSlatLength}x#{supportSlatWidth}x#{supportSlatHeight}"

# table top
console.log "#{tableTopBoardCount}x board #{tableLength}x#{tableTopBoardWidth}x#{tableTopBoardThickness}"

# legs
console.log "4x legs #{legLength}x#{legDepth}x#{legWidth}"

# cross supports
console.log "4x cross supports, approx #{12 * INCH}x#{2 * INCH}x#{2 * INCH}"

