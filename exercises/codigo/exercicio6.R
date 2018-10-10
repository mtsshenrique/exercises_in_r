library(readxl)
library(qcc)

dados <- read_excel("dados/exercicio6.xls")

pareto.chart(dados$`Nº pessoas`, names=dados$Qualidade, col='red', ylab='Número de pessoas')
