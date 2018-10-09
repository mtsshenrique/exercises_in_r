library(readxl)

dados <- read_excel("dados/exercicio4.xls")
tabela = table(dados)

View(tabela)

valores = dados$Salários

hist(x = valores, col = "orange" ,main = "Salários do hospital", xlab = "Salário", ylab="Frequência")
