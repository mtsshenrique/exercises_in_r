#install.packages("xlsReadWrite")
library(xlsReadWrite)
library("WriteXLS")

#abre arquivo pdf para poder salvar o gráfico
pdf("graficos/exercicio3.pdf")

#atribui dados a vetores
numero_filho <- c(0,1,2,3,4,5,"mais que 5")
familia <- c(17, 20, 28, 19, 7, 4, 5)

#cria tabela
tabela <- data.frame("Número Filhos"=numero_filho, "Família"=familia)

#cria pasta output
outputdir <- 'graficos'
dir.create(outputdir, showWarnings = FALSE)


#cria tabela xls em output
write.csv(tabela, file="dados/exercicio3.csv")


#mediana e moda
mediana <- median(tabela$Família)
moda <- subset(tabela$Família,tabela$Família==max(tabela$Família))

#gerando o gráfico
nome_coluna <- c("moda", "mediana")
eixo <- c(moda, mediana)
#tabela2 <- data.frame("Medida"=nome_coluna, "Qtd"=eixo)
#plot(tabela2)

barplot(c("Moda"=moda, "Mediana"=mediana), col="blue", border = "red")
#fecha pdf
dev.off()
