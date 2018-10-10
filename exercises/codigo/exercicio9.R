library(readxl)

dados <- read_excel("dados/exercicio9.xls")

tabela = table(dados)


valores = dados$Salários
range(valores)
breaks <- seq(3, 25, by=2)

valores.cut <- cut(valores, breaks, right=FALSE)

frequencias = table(valores.cut)

View(frequencias)

hist(x = valores, col = "grey" ,main = "Salário dos Funcionários", xlab = "Salários", ylab="Funcionários")