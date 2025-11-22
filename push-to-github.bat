@echo off
REM Script para hacer push a GitHub
REM Ejecutar haciendo doble clic o desde CMD

echo 🚀 Preparando push a GitHub...

cd /d "D:\Users\vgarciat\still-club-landing"

REM Verificar que Git está instalado
where git >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ✗ Git no está instalado o no está en el PATH
    echo Por favor instala Git desde: https://git-scm.com/download/win
    pause
    exit /b 1
)

echo ✓ Git está disponible

REM Inicializar repositorio si no existe
if not exist ".git" (
    echo 📦 Inicializando repositorio Git...
    git init
)

REM Agregar todos los archivos
echo 📝 Agregando archivos...
git add .

REM Hacer commit
echo 💾 Haciendo commit...
git commit -m "Initial commit: Still Club landing page - Complete implementation"

REM Agregar remote si no existe
git remote | findstr /C:"origin" >nul
if %ERRORLEVEL% NEQ 0 (
    echo 🔗 Agregando remote origin...
    git remote add origin https://github.com/valeriagarciatsuchikame/stillclubproject.git
) else (
    echo ✓ Remote origin ya existe
    git remote set-url origin https://github.com/valeriagarciatsuchikame/stillclubproject.git
)

REM Renombrar branch a main
echo 🌿 Configurando branch main...
git branch -M main

REM Hacer push
echo ⬆️ Haciendo push a GitHub...
echo ⚠️  Si te pide autenticación, usa tu Personal Access Token de GitHub
git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo ✅ ¡Push completado exitosamente!
    echo 🌐 Ve a: https://github.com/valeriagarciatsuchikame/stillclubproject
) else (
    echo ❌ Error al hacer push. Revisa los mensajes de error arriba.
    echo 💡 Si el repositorio remoto ya tiene contenido, ejecuta:
    echo    git pull origin main --allow-unrelated-histories
    echo    git push -u origin main
)

pause

