import system
import strutils
import sequtils

var input = splitLines(readFile("1.in"))

var answer1 = foldl(zip(input[1..len(input)-1], input[0..len(input)-2]), a + (if parseInt(b[0])-parseInt(b[1])>0: 1 else: 0),0)
var outFile = open("1.out", fmWrite)
write(outFile, answer)

# var answer2 = #
