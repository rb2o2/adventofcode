import system
import strutils
import sequtils


var inputfile = open("1.in", fmRead)
var input = splitLines(readAll(inputfile))
close(inputfile)

var answer1 = foldl(zip(input[1..len(input)-1], input[0..len(input)-2]), a + (if parseInt(b[0])-parseInt(b[1])>0: 1 else: 0),0)
var outFile = open("1.out", fmWrite)
write(outFile, answer1)

var answer2 = foldl(zip(input[3..len(input)-1], input[0..len(input)-4]), a + (if parseInt(b[0]) > parseInt(b[1]): 1 else: 0),0) 

close(outFile)
outFile = open("2.out", fmWrite)
write(outFile, answer2)
close(outFile)