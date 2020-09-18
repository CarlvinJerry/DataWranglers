library(dplyr)
library(tidyverse)
library(readxl)
KUCCPS <- read_excel("KUCCPS.xlsx")
View(KUCCPS)
cnames <-  colnames(KUCCPS)

#G3neral Work Environment-----
generalWorkEnvironment <- KUCCPS[c(2,7,8,9,10)]
colnames(generalWorkEnvironment)

#by gender----
table(generalWorkEnvironment[1])
Male <- generalWorkEnvironment[generalWorkEnvironment[1] == "Male",]
table(Male[,5])

Female <- generalWorkEnvironment[generalWorkEnvironment[1] == "Female",]
table(Female[,2])
table(Female[,3])
table(Female[,4])
table(Female[,5])


#Health & Safety-----
healthAndSafety <- KUCCPS[c(11:18)]
length(healthAndSafety)

table(healthAndSafety[,1])
table(healthAndSafety[,2])
table(healthAndSafety[,3])
table(healthAndSafety[,4])
table(healthAndSafety[,5])
table(healthAndSafety[,6])
table(healthAndSafety[,7])
table(healthAndSafety[,8])



#Welfare-----
welfare <- KUCCPS[c(19:23)]
length(welfare)

table(welfare[,1])
table(welfare[,2])
table(welfare[,3])
table(welfare[,4])
table(welfare[,5])
1table(welfare[,6])
table(welfare[,7])
table(welfare[,8])


#Training & Dev-----
trainingAndDev <- KUCCPS[c(24:27)]
length(trainingAndDev)

table(trainingAndDev[,1])
table(trainingAndDev[,2])
table(trainingAndDev[,3])
table(trainingAndDev[,4])

#Career progression-----
careerProg <- KUCCPS[c(28:31)]
length(careerProg)

table(careerProg[,1])
table(careerProg[,2])
table(careerProg[,3])
table(careerProg[,4])


#Career progression-----
rewards <- KUCCPS[c(32:34)]
length(rewards)

table(rewards[,1])
table(rewards[,2])
table(rewards[,3])
table(rewards[,4])



#Career progression-----
communication <- KUCCPS[c(36:44)]
length(communication)

table(communication[,1])
table(communication[,2])
table(communication[,3])
table(communication[,4])
table(communication[,5])
table(communication[,6])
table(communication[,7])
table(communication[,8])
table(communication[,9])



#Career progression-----
leadership <- KUCCPS[c(45:48)]
length(leadership)

table(leadership[,1])
table(leadership[,2])
table(leadership[,3])
table(leadership[,4])


#Career progression-----
perfAppraisal <- KUCCPS[c(50:52)]
length(perfAppraisal)

table(perfAppraisal[,1])
table(perfAppraisal[,2])
table(perfAppraisal[,3])


table(KUCCPS[56])




3,
3,
1,
1,
3,
2,
2,
6,
1,
2,
6,
3,
5,
2,
2,
5)
table(yrz)
