# 🧠 Ambiente de Desenvolvimento em Python com Jupyter

Este repositório fornece um ambiente Docker isolado e pronto para uso com **Python 3.10** e **Jupyter Notebook**, ideal para cursos e projetos de **Inteligência Artificial**, **Visão Computacional**, **Machine Learning** e afins.

O ambiente foi projetado para ser simples, limpo e altamente personalizável, eliminando conflitos com o sistema operacional do host (ex: Windows), oferecendo uma plataforma estável e reprodutível para estudos e desenvolvimento contínuo.

---

## 📦 Tecnologias e Ferramentas

- **Python 3.10 (slim)**
- **Jupyter Notebook** (interface de notebooks interativa)
- **Docker** & **Docker Compose**
- Compartilhamento direto com o sistema local (`./notebooks`)
- Compatível com instalação manual de pacotes como:
  - `opencv-python`, `numpy`, `torch`, `tensorflow`, `pytesseract`, etc.
  - Ferramentas de OCR como `tesseract-ocr` podem ser instaladas dentro do container

---

## 🚀 Como Usar

### 1. Pré-requisitos

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

### 2. Clone o repositório

```bash
git clone https://github.com/seuusuario/ambiente-desenvolvimento-ia.git
cd ambiente-desenvolvimento-ia
```

### 3. Estrutura de diretórios

```
ambiente-desenvolvimento-ia/
├── Dockerfile
├── docker-compose.yml
├── notebooks/            ← Seus notebooks ficarão aqui
└── README.md
```

### 4. Suba o container

```bash
docker-compose up --build
```

Aguarde até que o terminal exiba o link com o token do Jupyter Notebook. Copie e cole no navegador para acessar a interface.

---

## 🔧 Instalação de Pacotes no Container

Após o container estar rodando, você pode abrir um terminal interativo no container:

```bash
docker exec -it OCR bash
```

E instalar o que quiser, por exemplo:

```bash
apt update && apt install -y tesseract-ocr
pip install opencv-python pytesseract numpy
```

Ou via comandos dentro do próprio Jupyter:

```python
!pip install opencv-python
```

---

## 🧪 Exemplo de uso

1. Crie um novo notebook em `notebooks/`.
2. Instale as bibliotecas desejadas.
3. Desenvolva seu projeto com total controle e isolamento do seu ambiente principal.

---

## 📁 Volume Persistente

Todos os notebooks criados ou modificados serão salvos automaticamente na pasta local `./notebooks`, garantindo persistência mesmo após reiniciar o container.

---

## 🛑 Como parar o ambiente

Para parar o container:

```bash
docker-compose down
```

---

## ✨ Futuras melhorias

* Suporte ao JupyterLab
* Ambiente com bibliotecas pré-instaladas (TensorFlow, PyTorch, etc.)
* Scripts de setup para automação
* Integração com VSCode via `devcontainer`

---

## 📜 Licença

Este projeto está sob a licença MIT. Sinta-se à vontade para utilizar, modificar e compartilhar!

---

## 💬 Contato

- Desenvolvido por **Arthur Paes Leme Stiegler**
- Entre em contato em: [arthurp.l.stiegler@gmail.com](mailto:arthurp.l.stiegler@gmail.com)
- Ou acesse: [linkedin.com/in/arthur-paes-leme-stiegler-1940361a3](www.linkedin.com/in/arthur-paes-leme-stiegler-1940361a3)
