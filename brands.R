
library(dplyr)
library(readxl)
library(data.table)

book3 <- read_excel("brand.xlsx")



#COLLEGES & UNIS-------------
refactor <- 31/23

#Comparison
comparison <- book3[22:30]


#Function-------------------------------------------
dataWrangler <- function(dataSet,refactorValue){
comparison <- dataSet
refactor <- refactorValue
#Frequency df-----
freqVector <-rep(NA,length(comparison))
#Count maker ----------------------------------------
countMaker <-  function(data){
for (i in 1:length(data)){
  freqVector[i] <- paste("data.frame(round(table(comparison[,",i,"])*refactor))")
}
freqVector
  }


#Vector parser ------------------------------------------------
vectors <- countMaker(comparison)
dfVector <- freqVector2 <-rep(NA,length(vectors))
dfs <- function(vectors){
  for (i in 1:length(vectors)){
    dfVector[i] <- paste("data.table::transpose(",noquote(vectors[i]),", keep.names = 'Freq', make.names = 'Var1')")
  }
  dfVector
  }

question <- dfs(vectors)


mylist <- list() #create an empty list for df

for (i in 1:length(question)) {
  mylist[[i]] <-  eval(parse(text = question[i])) #put all vectors in the list
}


#Clean question tags and bind output-----
tempDf <-  comparison %>%
    tibble::rownames_to_column() %>%
    tidyr::gather(variable, value, -rowname) %>%
    tidyr::spread(rowname, value)

comparison <- tempDf %>% transmute("Question_Tags" =  gsub("\\[|\\]", "",stringr::str_extract(tempDf$variable,"\\[.*?\\]")))
freq_DFs <- dplyr::bind_rows(mylist)

final <- cbind(comparison,freq_DFs[-1])

final %>% mutate_all(~replace(., is.na(.), 0))
}
#Rearrange columns and export to CSV------

out <- dataWrangler(comparison,refactor)

colnames(out)
final <- final[, c(1, 6, 2, 3, 4,5)]


write.csv(final," comparison.csv")






