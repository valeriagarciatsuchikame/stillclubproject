# Instrucciones para Push a GitHub

## Pasos para hacer push del proyecto a GitHub

### 1. Navegar al directorio del proyecto
```bash
cd "D:\Users\vgarciat\still-club-landing"
```

### 2. Inicializar repositorio Git (si no está inicializado)
```bash
git init
```

### 3. Agregar todos los archivos
```bash
git add .
```

### 4. Hacer commit inicial
```bash
git commit -m "Initial commit: Still Club landing page - Complete implementation"
```

### 5. Agregar el remote de GitHub
```bash
git remote add origin https://github.com/valeriagarciatsuchikame/stillclubproject.git
```

### 6. Renombrar branch a main (si es necesario)
```bash
git branch -M main
```

### 7. Hacer push al repositorio
```bash
git push -u origin main
```

## Si el repositorio ya tiene contenido

Si el repositorio remoto ya tiene commits, necesitarás hacer pull primero:

```bash
git pull origin main --allow-unrelated-histories
```

Luego hacer push:
```bash
git push -u origin main
```

## Si necesitas autenticación

Si GitHub te pide autenticación, puedes usar:

1. **Personal Access Token** (recomendado):
   - Ve a GitHub → Settings → Developer settings → Personal access tokens
   - Crea un token con permisos de repo
   - Usa el token como contraseña cuando te lo pida

2. **GitHub CLI**:
   ```bash
   gh auth login
   ```

## Comandos completos en una secuencia

```bash
cd "D:\Users\vgarciat\still-club-landing"
git init
git add .
git commit -m "Initial commit: Still Club landing page - Complete implementation"
git remote add origin https://github.com/valeriagarciatsuchikame/stillclubproject.git
git branch -M main
git push -u origin main
```

## Verificar que todo está bien

Después del push, verifica en GitHub:
- Todos los archivos están presentes
- La estructura de carpetas es correcta
- No hay archivos sensibles (verifica .gitignore)

