# Quick Start: Migración Rápida

## Opción 1: Copia Manual Rápida (5 minutos)

```bash
# 1. Clona ambos repositorios
git clone https://github.com/alainsillo/PWEB-Practica-4.git
git clone https://github.com/alainsillo/programacion_web_final.git

# 2. Usa el script de migración
cd PWEB-Practica-4
./migrate_to_final.sh ../programacion_web_final

# 3. Haz commit y push
cd ../programacion_web_final
git add practica4-galeria/
git commit -m "Add Practica 4: Galería de Ariana Grande"
git push origin main
```

## Opción 2: Comando Único

```bash
# En el directorio donde quieras trabajar
git clone https://github.com/alainsillo/PWEB-Practica-4.git source && \
git clone https://github.com/alainsillo/programacion_web_final.git target && \
cd target && \
mkdir -p practica4-galeria && \
cp ../source/index.html practica4-galeria/ && \
cp ../source/image_*.* practica4-galeria/ && \
git add practica4-galeria/ && \
git commit -m "Add Practica 4: Galería de Ariana Grande" && \
git push origin main && \
echo "✅ Migración completada!"
```

## Opción 3: Usando Git Remote

```bash
# Clona el repositorio fuente
git clone https://github.com/alainsillo/PWEB-Practica-4.git
cd PWEB-Practica-4

# Agrega el repositorio destino como remote
git remote add target https://github.com/alainsillo/programacion_web_final.git

# Fetch para ver el estado actual
git fetch target

# Push a una nueva rama
git push target HEAD:practica4-galeria

# Luego ve a GitHub y crea un Pull Request de practica4-galeria a main
```

## Verificación

Después de la migración, verifica que todos los archivos estén presentes:
- index.html
- image_1.jpg
- image_2.png  
- image_3.jpg
- image_4.jpg
- image_5.png
- image_6.jpg

Abre index.html en un navegador para verificar que la galería funcione correctamente.
