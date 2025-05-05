FROM python:3.10-slim

# Evita buffering no output do Python
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    TZ=America/Sao_Paulo

# Instala dependências mínimas do sistema
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Instala Jupyter Notebook
RUN pip install --upgrade pip && pip install notebook

# Cria pasta de trabalho
WORKDIR /workspace

# Expõe porta do Jupyter
EXPOSE 8888

# Comando padrão para iniciar o Jupyter
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
