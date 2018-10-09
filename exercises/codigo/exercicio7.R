library(readxl)

dados <- read_excel("dados/exercicio7.xls")
tabela = table(dados)


barplot(dados$Atendimento, main="Atendimento Hospital por áreas", xlab = "Áreas", 
        ylab = "Qtde Atendimento", names.arg = dados$Áreas,ylim=c(0, 400), col = "yellow")
