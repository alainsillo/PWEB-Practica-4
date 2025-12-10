# Migration Guide: PWEB-Practica-4 to programacion_web_final

This guide explains how to migrate the content from this repository to https://github.com/alainsillo/programacion_web_final.git

## Repository Content

This repository contains:
- `index.html` - Galería de Ariana Grande (HTML with embedded CSS)
- `image_1.jpg` - Image file (4.3 KB)
- `image_2.png` - Image file (54 KB)
- `image_3.jpg` - Image file (149 KB)
- `image_4.jpg` - Image file (144 KB)
- `image_5.png` - Image file (203 KB)
- `image_6.jpg` - Image file (108 KB)

## Migration Methods

### Method 1: Using Git Remote (Recommended if you have access)

```bash
# Clone the source repository
git clone https://github.com/alainsillo/PWEB-Practica-4.git
cd PWEB-Practica-4

# Add the target repository as a remote
git remote add target https://github.com/alainsillo/programacion_web_final.git

# Fetch the target repository
git fetch target

# Push to a new branch in the target repository
git push target HEAD:practica4-galeria

# Then you can create a PR or merge as needed in the target repository
```

### Method 2: Manual File Copy

1. Clone both repositories:
```bash
git clone https://github.com/alainsillo/PWEB-Practica-4.git source
git clone https://github.com/alainsillo/programacion_web_final.git target
```

2. Copy files:
```bash
# Create a directory for the gallery in the target repository
cd target
mkdir -p practica4-galeria
cp ../source/index.html practica4-galeria/
cp ../source/image_*.{jpg,png} practica4-galeria/
```

3. Commit and push:
```bash
git add practica4-galeria/
git commit -m "Add Practica 4: Galería de Ariana Grande"
git push origin main
```

### Method 3: Using Git Patch

A patch file has been created that contains all commits from this repository.

```bash
# In the target repository
git am /path/to/migration.patch
```

## Notes

- The source repository contains a simple HTML gallery with 6 images
- The target repository already has other content (CRUD, Glosario, biografia)
- Consider organizing the files in a subdirectory to avoid conflicts
- The patch file is available as `migration.patch`
