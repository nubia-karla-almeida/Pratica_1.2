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

# Medidas descritivas para variáveis quantitativas


# Etapa 3: Análise inferencial na branch “analise-inferencial”
# Teste de comparação de médias das variáveis quantitativas por dois grupos de variáveis qualitativas