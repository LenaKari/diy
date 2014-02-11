# constants
CM = 10         # as timber is sold in mm


# bed configuration
mattressWidth = 140.0 * CM
mattressLength = 200.0 * CM
mattressHeight =  17.0 * CM

frameWidth = 5.0 * CM
frameHeight = 5.0 * CM
longFrameLength = mattressLength
shortFrameLength = mattressWidth
bedFrameScrews = 8  # 7.6 * CM

apronWidth = 2.5 * CM
apronHeight = 17.0 * CM         # maximum, minimum 15CM
longApronLength = 200 * CM
bedApronScrews = 8  # 5 * CM

supportSlatWidth = 7.0 * CM             # minimum
supportSlatHeight = 2.0 * CM
supportSlatLength = 140.0 * CM
supportSlatSpacing = 10.0 * CM          # maximum
bedSupportSlatScrews = 20  # 5 * CM

legWidth = 7 * CM
legDepth = 5 * CM
legHeight = 20 * CM
bedLegScrews = 8  # 7.6 * CM


# calculations - apron 
shortApronLength = mattressWidth + (2 * apronWidth)

# calculations - supporting slats
supportSlatCount = Math.round(longFrameLength / supportSlatSpacing)

# calculations - screws
bed76mmScrews = 1.5 * (bedFrameScrews + bedLegScrews)
bed50mmScrews = 1.5 * (bedApronScrews + bedSupportSlatScrews)


# shopping list

# long frame slat
console.log "(3) long frame slats #{frameWidth} x #{frameHeight} x #{longFrameLength}"

# short frame slat
console.log "(2) short frame slats #{frameWidth} x #{frameHeight} x #{shortFrameLength}"

# longApronSlat
console.log "(2) long apron slats #{apronWidth} x #{apronHeight} x #{longApronLength}"

# shortApronSlat
console.log "(2) short apron slats #{apronWidth} x #{apronHeight} x #{shortApronLength}"

# supportSlat
console.log "(#{supportSlatCount}) support slats #{supportSlatWidth} x #{supportSlatHeight} x #{supportSlatLength}"

# legs
console.log "(5) legs #{legWidth} x #{legDepth} x #{legHeight}"

# screws
console.log "(#{bed76mmScrews}) 76 mm screws"
console.log "(#{bed50mmScrews}) 50 mm screws"
