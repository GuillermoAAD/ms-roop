# ROOP con Docker

Este proyecto te permite ejecutar el proyecto de [s0md3v/roop](https://github.com/s0md3v/roop) usando Docker y Docker Compose.

## Cómo empezar

### 1. Clonar Repositorio

En este proyecto ya se incluye el repositorio [s0md3v/roop](https://github.com/s0md3v/roop) clonado, pero si se requiere volver a clonar, hacerlo en la carpeta [roop](roop)

### 3. Levantar el Contenedor

Para iniciar el contenedor.

``` sh
docker compose build
docker compose up -d
```

>**NOTA:**
<br><br>El servicio puede tardar unos minutos en iniciarse por primera vez mientras descarga las dependencias necesarias.

### 4. Acceder a la CLI del contenedor

Una vez que esté listo, ingresar en la terminal:

``` sh
docker exec -it roop bash
```

### 5. Hacer el Swappeo de rostros

- Asegurarse de tener las siguientes carpetas donde n es el número de test

``` sh
make src/test-n/input
make src/test-n/output
```

dentro de input eagregar los archivos:

| Archivo | Descripción |
| --- | --- |
| face.png | Es el archivo de donde se extraera la  o las caras |
| target.png | Es el archivo donde se insertará la  o las caras |

>**NOTA:**
<br><br>De momento se ha probado con archivos .png, .jpg y .mp4, desconozco que otros acepte.

- Ejecutar commando para hacer el swapeo de rostros (cambiar n en la carpeta test- para tener un historial de pruebas)

``` sh
# Para reemplazar la cara de source en una cara del target
``` sh
python run.py \
  --source src/test-n/input/face.png \
  --target src/test-n/input/target.png \
  --output src/test-n/output/result.png


# Para reemplazar la cara de source en multiples caras del target
python run.py \
  --source src/test-n/input/face.png \
  --target src/test-n/input/target.png \
  --output src/test-n/output/result.png \
  --many-faces 
```

### 6. Detener el Servicio

Para detener los contenedores, ejecuta:

```bash
docker-compose down
```

## EJEMPLO

### Inputs

Face:

![face](src/test-n/input/face.png "face")

Target:

![target](src/test-n/input/target.png "target")

### Output

Result:

![result](src/test-n/output/result.png "result")
