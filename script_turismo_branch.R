# Script roteiro para a atividade 2 - aula 7 - dados de turismo

# Etapa 1: Leitura e manipulação dos dados na branch “main”
# Leitura e verificação do banco
# Leitura e verificação do banco
dados = read.csv("dados_turismo.csv", header = T, sep = ";")
str(dados)
summary(dados)

# Atribuindo legendas dos rótulos das variáveis qualitativas
dados$sexo = factor(dados$sexo, levels = c(1, 2), labels = c("masculino", "feminino"))
dados$estabelecimento = factor(dados$estabelecimento, levels = c("P", "H"), labels = c("pousada", "hotel"))

# Etapa 2: Análise descritiva de dados na branch “analise-descritiva”
# Tabelas e gráficos de distribuição de frequências das variáveis qualitativas
f_sexo = round(prop.table(table(dados$sexo, useNA="no")) * 100, 2)
barplot (f_sexo, main = "Distribuição de frequências dos turistas segundo sexo", xlab = "sexo", ylab = "%")

f_estab = round(prop.table(table(dados$estabelecimento, useNA="no")) * 100, 2)
barplot (f_estab, main = "Distribuição de frequências dos turistas segundo tipo de estabelecimento de estadia", xlab = "tipo de estabelecimento", ylab = "%")

f_sexo_estab = round(prop.table(table(dados$sexo, dados$estabelecimento, useNA="no"), margin = 2) * 100, 2)
barplot(f_sexo_estab, main = "Distribuição dos turistas segundo sexo por tipo de estabelecimento", xlab = "tipo de estabelecimento", ylab = "%", beside = TRUE)

# Medidas descritivas para variáveis quantitativas
quantile(dados$duracao, c(0.25, 0.50, 0.75), na.rm = TRUE)
mean(dados$duracao, na.rm = TRUE)
sd(dados$duracao, na.rm = TRUE)

quantile(dados$valor, c(0.25, 0.50, 0.75), na.rm = TRUE)
mean(dados$valor, na.rm = TRUE)
sd(dados$valor, na.rm = TRUE)

# Etapa 3: Análise inferencial na branch “analise-inferencial”
# Teste de comparação de médias das variáveis quantitativas por dois grupos de variáveis qualitativas