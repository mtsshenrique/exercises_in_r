library(readxl)

dados <- read_excel("dados/exercicio8.xls")


data <- stack(dados)

valores = dados$`Altura dos pacientes`

hist(data$values, col = "blue" ,main = "Altura dos pacientes", xlab = "Altura", ylab="Frequencia")
