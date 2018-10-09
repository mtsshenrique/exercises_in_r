

# Clean up the area
rm(list = ls())
#

# Localizando o arquivo .xls
setwd("exercises_in_r/exercises/dados")

#install.packages("readxl")
library(readxl)

dados <- read_excel("dados/exercicio1.xls")
tabela = table(dados)
#printa
#View(tabela)

#define media
media = mean(dados$`Taxas de juros`)


#define mediana
mediana = median(dados$`Taxas de juros`)

#define variancia
variancia = var(dados$`Taxas de juros`)

#define desvio padrao
desviopadrao = sd(dados$`Taxas de juros`)

#valor minimo
valor_min = min(dados$`Taxas de juros`)

#valor maximo
valor_max = max(dados$`Taxas de juros`)

#quartis 1
q1 <- quantile(dados$`Taxas de juros`, 0.25)[[1]]

#quartis 3
q3 <- quantile(dados$`Taxas de juros`, 0.75)[[1]]

boxplot(quantile(dados$`Taxas de juros`) , pch=15, main="Gráfico ex1" , col = "grey", pars = list(boxwex = 1))
