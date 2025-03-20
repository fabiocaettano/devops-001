# Pesquisa no DeepSeek para aplicar o conceito de MultiStage para compactar a imagme
# Estágio 1: "builder" - Instala dependências e compila o necessário
FROM python:3.9 as builder

WORKDIR /app
COPY requirements.txt .

# Cria um ambiente virtual para isolar as dependências
RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

# Instala as dependências (usando cache apenas durante a construção)
RUN pip install --no-cache-dir -r requirements.txt

# Copia o código da aplicação
COPY . .

# ------------------------------------------------------------

# Estágio 2: Imagem final leve (apenas runtime)
FROM python:3.9-alpine

WORKDIR /app

# Copia o ambiente virtual do estágio "builder"
COPY --from=builder /opt/venv /opt/venv

# Copia apenas o código da aplicação (sem arquivos desnecessários)
COPY --from=builder /app /app

# Atualiza o PATH para usar o ambiente virtual copiado
ENV PATH="/opt/venv/bin:$PATH"

# Porta exposta e comando de execução
EXPOSE 5000
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]