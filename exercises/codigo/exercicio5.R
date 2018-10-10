library(readxl)

dados <- read_excel("dados/exercicio5.xls")

tabela = table(dados)

barplot(dados$`Nº pessoas`, main = "Marcas",
        xlab = "Marcas", ylab = "Número de Pessoas", names.arg = dados$Marcas, col = "red")
