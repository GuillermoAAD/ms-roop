

---

##  **ROOP**

**ROOP** es una herramienta de **face swapping (intercambio de rostros)** enfocada en imágenes y videos, basada en modelos de deep learning. Es **rápida, no necesita entrenamiento previo**, y produce resultados sorprendentes con solo una imagen de origen (cara) y una de destino (meme, por ejemplo).

---
### 🔓 ¿Es **privada u open-source**?

- **Sí, es open-source.**
    
- El repositorio original está en GitHub: [https://github.com/s0md3v/roop](https://github.com/s0md3v/roop)
    
- Puedes modificarlo, adaptarlo e incluso integrarlo en tus propios flujos (como con **ComfyUI** o **Stable Diffusion WebUI**).
    
---

### 💵 ¿Tiene **costo**?

- **No, es gratuito** si lo usas desde GitHub (localmente).
    
- **No necesitas pagar licencias.**
    
- Solo necesitas una PC con GPU (NVIDIA preferida) para que funcione con buena velocidad.
    
---

### 🧠 ¿Requiere **entrenamiento previo**?

- **No.**
    
- ROOP **no entrena modelos** como DeepFaceLab.
    
- Utiliza modelos **preentrenados** de detección y reemplazo de rostro (como `inswapper_128.onnx`, un modelo basado en InsightFace).
    

Esto significa que:

- Puedes **reemplazar un rostro en segundos** sin pasar horas entrenando.
    
- No necesitas datasets ni saber de machine learning.
    

---
### 📋 Requisitos del sistema (versión local)

- Sistema: Windows o Linux.
    
- Python 3.9+.
    
- GPU NVIDIA con soporte para CUDA (opcional pero muy recomendable).
    
- Dependencias: `onnxruntime`, `face_alignment`, `insightface`, etc.
    
---

### ✅ Ventajas

- Código abierto y sin costo.
    
- Muy fácil de usar.
    
- Sin entrenamiento.
    
- Resultados rápidos y realistas.
    
- Compatible con múltiples imágenes o videos.
    
### ❌ Desventajas

- No permite **control tan preciso** como DeepFaceLab si buscas ajuste fino.
    
- Requiere algo de instalación si lo usas localmente.
    
- Funciona mejor con rostros bien visibles (frontal o casi frontal).
    
---


## InsightFaceSwap

**InsightFaceSwap** es una herramienta basada en los modelos de **InsightFace**, un proyecto de reconocimiento facial de **grado de investigación** desarrollado por DeepInsight (los creadores de los famosos modelos ArcFace, iResNet, etc.).

Permite realizar **face swapping sin necesidad de entrenamiento** y con resultados de **alta calidad**, incluso en condiciones difíciles como expresiones, ángulos o iluminación variados.

---
### 🔓 ¿Es **privada u open-source**?

- **Sí, es open-source**.
    
- Puedes encontrar la versión oficial en GitHub:  
    👉 [https://github.com/deepinsight/insightface](https://github.com/deepinsight/insightface)
    
- Hay varias interfaces o forks que se especializan en face swapping directamente con InsightFace, como:
    
    - [https://github.com/HuolunWang/inswapper](https://github.com/HuolunWang/inswapper)
        
    - [https://github.com/iperov/insightface-swap](https://github.com/iperov/insightface-swap)
        
---
### 💵 ¿Tiene **costo**?

- **Gratis completamente.**
    
- No necesitas licencias.
    
- Todo corre de forma local en tu PC, sin conexión a internet (salvo para descargar modelos la primera vez).
    
---

### 🧠 ¿Requiere **entrenamiento**?

- **No.**
    
- Usa modelos **preentrenados**:
    
    - **ArcFace** para reconocimiento.
        
    - **GFPGAN** o similares para mejorar rostros.
        
    - **inswapper_128.onnx** para hacer el reemplazo de forma directa.
    
---

## 🧰 ¿Cómo se usa localmente?

### 1. 🔧 Requisitos

- **Sistema operativo**: Windows o Linux.
    
- **Python** 3.8–3.10 (recomendado).
    
- **GPU NVIDIA** compatible con CUDA (opcional, pero mejora mucho el rendimiento).
    
- Dependencias: `onnxruntime`, `opencv-python`, `insightface`, etc.
    

---
## ✅ Ventajas de InsightFaceSwap

| Ventaja              | Detalle                                                               |
| -------------------- | --------------------------------------------------------------------- |
| 🔥 Muy alta calidad  | Reemplazo facial realista incluso en expresiones y ángulos difíciles. |
| ⚡ Sin entrenamiento  | Usa modelos listos para usar.                                         |
| 🖥️ Corre localmente | Privacidad total, sin subir imágenes a internet.                      |
| 🛠️ Flexible         | Puedes integrarlo a pipelines como ComfyUI o apps propias.            |
| 💬 Comunidad activa  | Muchas variantes, forks y mejoras disponibles.                        |

---

## ❌ Desventajas

|Desventaja|Detalle|
|---|---|
|💡 Menos visual que ROOP|No tiene interfaz gráfica por defecto (solo CLI).|
|🔩 Puede requerir ajustes|A veces necesitas preprocesar imágenes (alinear, recortar).|
|🧱 GPU recomendada|Aunque puede correr en CPU, es lento sin aceleración.|

---
## **Faceswap-WebUI**

**Faceswap-WebUI** es una **interfaz gráfica moderna y simplificada** para usar **FaceSwap**, un motor de intercambio de rostros con deep learning. Esta versión hace que todo el proceso de face swapping sea más accesible para usuarios que **no quieren usar la línea de comandos** y prefieren algo visual y cómodo, tipo navegador.

---

## 🔍 Puntos clave sobre Faceswap-WebUI

### 🔓 ¿Es privada u open-source?

- ✅ **Sí, es open-source.**
    
- Proyecto oficial en GitHub:  
    👉 [https://github.com/MarekKowalski/FaceSwap](https://github.com/MarekKowalski/FaceSwap) _(motor base)_  
    

---

### 💵 ¿Tiene costo?

- **Completamente gratuito** si lo usas localmente.
    
- Solo debes descargarlo desde GitHub e instalarlo.
    
- Algunas versiones _no oficiales_ podrían ofrecer servicios en la nube con planes pagos, pero la versión real, local y open-source es **100% libre**.
    
---

### 🧠 ¿Requiere entrenamiento?

- **Sí y no.** Faceswap-WebUI puede:
    
    - Usar **modelos preentrenados** (recomendado para usuarios nuevos).
        
    - O bien **entrenar tus propios modelos** si deseas un nivel de personalización mayor.
        
---

## 🧰 ¿Cómo funciona Faceswap-WebUI?

### 🚦 Flujo básico

1. Subes o colocas la imagen **fuente** (con el rostro que deseas transferir).
    
2. Subes o colocas la imagen o video **destino** (el meme, por ejemplo).
    
3. Seleccionas el modelo o modo de trabajo (preentrenado o personalizado).
    
4. Presionas "Swap" y obtienes el resultado final.
    

---

### 🖥️ ¿Cómo se instala localmente?

#### 🧱 Requisitos mínimos

- **Python 3.8–3.10**.
    
- **NVIDIA GPU compatible con CUDA** (recomendado).
    
- Windows 10/11 o Linux.
    
---

# Requisitos (Localmente)


### Para una optimo uso:

| Componente        | Ejemplo            |
| ----------------- | ------------------ |
| GPU               | NVIDIA RTX 4070 Ti |
| CPU               | Ryzen 7 5800X      |
| RAM               | 32 GB DDR4         |
| Almacenamiento    | 1 TB SSD NVMe      |
| Sistema operativo | Windows 11         |
### Para correrlo apenas ff:

| Componente | Ejemplo                          |
| ---------- | -------------------------------- |
| GPU        | NVIDIA GTX 1660 Super / RTX 2060 |
| CPU        | Ryzen 5 3600                     |
| RAM        | 16 GB                            |
| SSD        | 500 GB SATA                      |
