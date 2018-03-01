require("minfi", quietly = TRUE)

args <- commandArgs(trailingOnly = TRUE)

input = args[1] 
output = args[2]

RGSet <- get(load(input))

MSet <-  preprocessIllumina(RGSet, bg.correct = TRUE, normalize = "controls") 

save(MSet, ascii=TRUE, file = output)


