library(data.table)
library(ggplot2)

setwd("C:/Users/James Bond/Desktop/Gitlab/emds/Analise da Evasao")

tabela_ano_disciplina = 
  fread('tabela_ano_disciplina.csv')

evadidos_em = 
  fread('evadidos_por_ano_e_curso.csv')

evadidos_por_ano_e_curso = 
  fread('tabela_cursos_motivo_ano.csv')

tabela_ano_disciplina =
  dplyr::filter(evadidos_por_ano_e_curso,
                evadidos_por_ano_e_curso$curso == 'ENGENHARIA DE PRODUCAO')

d$Var2[d$Var1 == "C"] <- "Medium"


#Grafico da Evasão de todos os cursos e de todos os motivos da EM ao longo do tempo.
ggplot(data = tabela_ano_disciplina, aes(x = ano, y = `Taxa evasao`))+
  geom_point()+
  facet_wrap(~motivo, scales = "free")+
  geom_smooth(method = 'lm')+theme(axis.text.x = element_text(angle = 30))


#Grafico da Evasão de todos os cursos da EM ao longo do tempo.
ggplot(data = evadidos_em, aes(x = ANO, y = `Taxa_de_Evasao`))+
  geom_point()+
  facet_wrap(~CURSO, scale = 'free')+
  geom_smooth(method = 'lm')+theme(axis.text.x = element_text(angle = 30))

oficial$`Taxa de EvasÃ£o`
#Aqui coloco a Taxa de Evasão como variavel dependente e busco outras variaveis independentes para descrever a Tx de Evasão.
summary(lm(data = oficial$`Taxa de EvasÃ£o`, formula = as.numeric(`Taxa de EvasÃ£o`)~
             (`Taxa evasao`)
))
