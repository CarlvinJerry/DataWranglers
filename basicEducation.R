library(dplyr)
library(readxl)
library(data.table)

book3 <- read_excel("brand.xlsx")




refactor <- 31/23

#Comparison----
comparison <- book3[22:30]


out <- dataWrangler(comparison,refactor)

colnames(out)
out <- out[, c(1, 6, 2, 3, 4,5)]


write.csv(out,"basicEdu_1_comparison.csv")


#CSI Investments-----
comparison <- book3[34:37]


out <- dataWrangler(comparison,refactor)

colnames(out)
out <- out[, c(1, 6, 2, 3, 4,5)]


write.csv(out,"basicEdu_2_csi.csv")


#CSI Initiatives-----
comparison <- book3[38:44]


out <- dataWrangler(comparison,refactor)

colnames(out)
out <- out[, c(1, 6, 2, 3, 4,5)]


write.csv(out,"basicEdu_3_csi.csv")


#Principles and Values-----
comparison <- book3[45:53]


out <- dataWrangler(comparison,refactor)

colnames(out)
out <- out[, c(1, 6, 2, 3, 4,5)]


write.csv(out,"basicEdu_4_principles.csv")



#Stake Holders-----
comparison <- book3[54:60]


out <- dataWrangler(comparison,refactor)

colnames(out)



write.csv(out,"basicEdu_5_stake.csv")



#Strategies-----
comparison <- book3[61:66]


out <- dataWrangler(comparison,refactor)

colnames(out)



write.csv(out,"basicEdu_6_strategies.csv")
