# Configuración de Git para GitHub

## Comandos para configurar Git

Una vez que tengas Git instalado, ejecuta estos comandos en tu terminal (PowerShell o CMD):

### 1. Configurar nombre de usuario
```bash
git config --global user.name "valeriagarciatsuchikame"
```

### 2. Configurar email

Tienes dos opciones para el email:

#### Opción A: Email noreply de GitHub (recomendado para privacidad)
```bash
git config --global user.email "valeriagarciatsuchikame@users.noreply.github.com"
```

#### Opción B: Tu email real asociado a GitHub
```bash
git config --global user.email "tu-email@ejemplo.com"
```

**Nota:** Si usas tu email real, asegúrate de que sea el mismo email asociado a tu cuenta de GitHub.

### 3. Verificar la configuración
```bash
git config --global --list
```

Deberías ver algo como:
```
user.name=valeriagarciatsuchikame
user.email=valeriagarciatsuchikame@users.noreply.github.com
```

## Configuración adicional recomendada

### Configurar editor por defecto (opcional)
```bash
# Para VS Code
git config --global core.editor "code --wait"

# Para Notepad++
git config --global core.editor "'C:/Program Files/Notepad++/notepad++.exe' -multiInst -notabbar -nosession -noPlugin"
```

### Configurar línea de comandos por defecto (opcional)
```bash
# Para usar PowerShell como editor de commits
git config --global core.editor "powershell -NoProfile -Command \"& { $editor = $env:EDITOR; if (-not $editor) { $editor = 'notepad' }; & $editor $args }\""
```

### Configurar autenticación con GitHub (recomendado)

Para evitar tener que ingresar credenciales cada vez:

#### Opción 1: GitHub CLI (recomendado)
```bash
# Instalar GitHub CLI
winget install GitHub.cli

# Autenticarse
gh auth login
```

#### Opción 2: Personal Access Token
1. Ve a GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)
2. Genera un nuevo token con permisos de `repo`
3. Guarda el token de forma segura
4. Cuando Git te pida credenciales, usa el token como contraseña

#### Opción 3: Credential Manager
```bash
# Configurar Git para usar Windows Credential Manager
git config --global credential.helper wincred
```

## Verificar que todo está configurado

Ejecuta estos comandos para verificar:

```bash
# Ver configuración de usuario
git config --global user.name
git config --global user.email

# Ver toda la configuración global
git config --global --list
```

## Después de configurar Git

Una vez configurado, puedes proceder con el push al repositorio:

```bash
cd "D:\Users\vgarciat\still-club-landing"
git init
git add .
git commit -m "Initial commit: Still Club landing page"
git remote add origin https://github.com/valeriagarciatsuchikame/stillclubproject.git
git branch -M main
git push -u origin main
```

O simplemente ejecuta el script:
```bash
.\push-to-github.ps1
```

## Instalar Git (si no lo tienes)

1. Descarga Git desde: https://git-scm.com/download/win
2. Ejecuta el instalador
3. Durante la instalación, selecciona:
   - "Git from the command line and also from 3rd-party software"
   - "Use the OpenSSL library"
   - "Checkout Windows-style, commit Unix-style line endings"
   - "Use Windows' default console window"
4. Reinicia tu terminal después de la instalación

## Encontrar tu email de GitHub

Si quieres usar tu email real de GitHub:

1. Ve a GitHub.com
2. Click en tu avatar (arriba derecha)
3. Settings
4. Emails
5. Copia el email que quieras usar (puede ser tu email principal o el email noreply)

