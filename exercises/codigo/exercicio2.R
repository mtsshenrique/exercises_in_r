library(readxl)

dados <- read_excel("dados/exercicio2.xls")

tabela_freq = table(dados)
View(tabela_freq)

valores = dados$Casas

#medidas de posicao
#media
media = mean(valores)

#moda
calcmoda <- function(x) {
        ux <- unique(x)
        ux[which.max(tabulate(match(x, ux)))] 
}
moda = calcmoda(valores)

#mediana
mediana = median(valores)

#medidas de dispersao
#define variancia
variancia = var(valores)

#define desvio padrao
desviopadrao = sd(valores)

hist(x = valores, col = 04 ,main = "Casas por quarteirão")
