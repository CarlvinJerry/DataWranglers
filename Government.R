library(readxl)
book2 <- read_excel("Book2.xlsx")

library(dplyr)



#core values
core <- book2[11:16]

table(core[,1])
table(core[,2])
table(core[,3])
table(core[,4])
table(core[,5])
table(core[,6])


#Mandate
mandate <- book2[17:22]

table(mandate[,1])
table(mandate[,2])
table(mandate[,3])
table(mandate[,4])
table(mandate[,5])
table(mandate[,6])



#Skills
skills <- book2[24:35]

table(skills[,1])
table(skills[,2])
table(skills[,3])
table(skills[,4])
table(skills[,5])
table(skills[,6])
table(skills[,7])
table(skills[,8])
table(skills[,9])
table(skills[,10])
table(skills[,11])
table(skills[,12])



#csis
csis <- book2[46:49]

table(csis[,1])
table(csis[,2])
table(csis[,3])
table(csis[,4])



#commitment
commitment <- book2[50:56]

table(commitment[,1])
table(commitment[,2])
table(commitment[,3])
table(commitment[,4])
table(commitment[,5])
table(commitment[,6])
table(commitment[,7])


#execution
execution <- book2[57:63]

table(execution[,1])
table(execution[,2])
table(execution[,3])
table(execution[,4])
table(execution[,5])
table(execution[,6])
table(execution[,7])


#execution2
execution2 <- book2[64:69]

table(execution2[,1])
table(execution2[,2])
table(execution2[,3])
table(execution2[,4])
table(execution2[,5])
table(execution2[,6])



#Gender
table(book2[2])


#Age
table(book2[3])


#dept
table(book2[6])


#service
table(book2[7])



#service time
table(book2[8])
