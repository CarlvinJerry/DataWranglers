library(readxl)
Book1 <- read_excel("Book1.xlsx")
View(Book1)
library(dplyr)
library(tidyverse)



#Split students
students <- filter(Book1,`Kindly indicate your category appropriately`%in% "Student")

refactor <- 600/26
#KUCCPS Mandate-----
Mandate <- students[c(12:17)]
length(Mandate)
nrow(Mandate)

round(table(Mandate[,1])*(refactor))
round(table(Mandate[,2])*(refactor))
round(table(Mandate[,3])*(refactor))
round(table(Mandate[,4])*(refactor))
round(table(Mandate[,5])*(refactor))
round(table(Mandate[,6])*(refactor))



#Customer service skills-----
skills <- students[c(18:29)]
length(skills)
nrow(skills)

round(table(skills[,1])*(refactor))
round(table(skills[,2])*(refactor))
round(table(skills[,3])*(refactor))
round(table(skills[,4])*(refactor))
round(table(skills[,5])*(refactor))
round(table(skills[,6])*(refactor))
round(table(skills[,7])*(refactor))
round(table(skills[,8])*(refactor))
round(table(skills[,9])*(refactor))
round(table(skills[,10])*(refactor))
round(table(skills[,11])*(refactor))
round(table(skills[,12])*(refactor))


#Complaints-----
complaints <- students[c(33:39)]
length(complaints)
nrow(complaints)

round(table(complaints[,1])*(refactor))
round(table(complaints[,2])*(refactor))
round(table(complaints[,3])*(refactor))
round(table(complaints[,4])*(refactor))
round(table(complaints[,5])*(refactor))
round(table(complaints[,6])*(refactor))
round(table(complaints[,7])*(refactor))


#Gender-----
gender <- students[c(2)]
length(gender)
nrow(gender)

round(table(gender[,1])*(refactor))
round(table(complaints[,2])*(refactor))
round(table(complaints[,3])*(refactor))
round(table(complaints[,4])*(refactor))
round(table(complaints[,5])*(refactor))
round(table(complaints[,6])*(refactor))
round(table(complaints[,7])*(refactor))


#Age-----
age <- students[c(3)]
length(age)
nrow(age)

sum(round(table(age[,1])*(refactor)))



#Interaction-----
interact <- students[c(5)]
length(interact)
nrow(interact)

sum(round(table(interact[,1])*(refactor)))


#Department-----
Department <- students[c(6)]
length(Department)
nrow(Department)

sum(round(table(Department[,1])*(refactor)))



#Services-----
Services <- students[c(7)]
length(Services)
nrow(Services)

sum(round(table(Services[,1])*(refactor)))



#time-----
time <- students[c(8)]
length(time)
nrow(time)

sum(round(table(time[,1])*(refactor)))


#learned about-----
lrn <- students[c(9)]
length(lrn)
nrow(lrn)

sum(round(table(lrn[,1])*(refactor)))


#complaints about-----
complaints <- students[c(30)]
length(complaints)
nrow(complaints)

sum(round(table(complaints[,1])*(refactor)))




#frequency about-----
frequency <- students[c(32)]
length(frequency)
nrow(frequency)

sum(round(table(frequency[,1])*(refactor)))
