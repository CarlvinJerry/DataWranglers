library(readxl)
book3 <- read_excel("brand.xlsx")

library(dplyr)

#COLLEGES & UNIS-------------
refactor <- 56/23

#Comparison
comparison <- book3[61:66]

# round(table(comparison[,1])*refactor)
# table(comparison[,2])*refactor
# table(comparison[,3])*refactor
# table(comparison[,4])*refactor
# table(comparison[,5])*refactor
# table(comparison[,6])*refactor
# table(comparison[,7])*refactor
# table(comparison[,8])*refactor
# table(comparison[,9])*refactor

df1 <-  data.frame(
  round(table(comparison[,1])*refactor))
df2 <-  data.frame(
  round(table(comparison[,2])*refactor))
df3 <-  data.frame(
  round(table(comparison[,3])*refactor))
df4 <-  data.frame(
  round(table(comparison[,4])*refactor))
df5 <-  data.frame(
  round(table(comparison[,5])*refactor))
df6 <-  data.frame(
  round(table(comparison[,6])*refactor))
df7 <-  data.frame(
  round(table(comparison[,7])*refactor))
df8 <-  data.frame(
  round(table(comparison[,8])*refactor))
df9 <-  data.frame(
  round(table(comparison[,9])*refactor))

#/\[.*?\]/g

df <-  comparison %>%
  rownames_to_column() %>%
  gather(variable, value, -rowname) %>%
  spread(rowname, value)


comparison <- df %>% transmute("KUCCPS level of executing its strategic goals" =  gsub("\\[|\\]", "",stringr::str_extract(df$variable,"\\[.*?\\]")))




#library(data.table)

freqs <- dplyr::bind_rows(transpose(df1, keep.names = "Freq", make.names = "Var1"),
                          transpose(df2, keep.names = "Freq", make.names = "Var1"),
                          transpose(df3, keep.names = "Freq", make.names = "Var1"),
                          transpose(df4, keep.names = "Freq", make.names = "Var1"),
                          transpose(df5, keep.names = "Freq", make.names = "Var1"),
                          transpose(df6, keep.names = "Freq", make.names = "Var1"))

final <- cbind(comparison,freqs[-1])
colnames(final)
final <- final[, c(1, 6, 2, 3, 4,5)]
View(final)

write.csv(final,"6Strategic goals.csv")

