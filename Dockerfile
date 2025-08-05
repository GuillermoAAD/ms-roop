FROM python:3.10-slim

# Evitar el input interactivo en pip
# ENV DEBIAN_FRONTEND=noninteractive

# Instala dependencias necesarias del sistema
RUN apt-get update && apt-get install -y \
    git \
    ffmpeg \
    libgl1 \
    build-essential \
    cmake \
    libgtk2.0-dev \
    libboost-all-dev \
    libssl-dev \
    python3-tk \
    && rm -rf /var/lib/apt/lists/*

# Establece directorio de trabajo
WORKDIR /app

# Copia los archivos del proyecto
COPY . /app

# Instala dependencias de Python
RUN pip install --upgrade pip \
 && pip install --no-cache-dir -r requirements-headless.txt

# Ejecuta Roop en modo CLI (headless)
CMD ["python", "run.py"]
