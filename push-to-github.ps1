# Script para hacer push a GitHub
# Ejecutar desde PowerShell: .\push-to-github.ps1

Write-Host "🚀 Preparando push a GitHub..." -ForegroundColor Cyan

# Verificar que estamos en el directorio correcto
$projectPath = "D:\Users\vgarciat\still-club-landing"
if (Test-Path $projectPath) {
    Set-Location $projectPath
    Write-Host "✓ Directorio correcto: $projectPath" -ForegroundColor Green
} else {
    Write-Host "✗ No se encontró el directorio del proyecto" -ForegroundColor Red
    exit 1
}

# Verificar que Git está instalado
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "✗ Git no está instalado o no está en el PATH" -ForegroundColor Red
    Write-Host "Por favor instala Git desde: https://git-scm.com/download/win" -ForegroundColor Yellow
    exit 1
}

Write-Host "✓ Git está disponible" -ForegroundColor Green

# Inicializar repositorio si no existe
if (-not (Test-Path ".git")) {
    Write-Host "📦 Inicializando repositorio Git..." -ForegroundColor Cyan
    git init
}

# Agregar todos los archivos
Write-Host "📝 Agregando archivos..." -ForegroundColor Cyan
git add .

# Verificar si hay cambios para commit
$status = git status --porcelain
if ($status) {
    Write-Host "💾 Haciendo commit..." -ForegroundColor Cyan
    git commit -m "Initial commit: Still Club landing page - Complete implementation"
} else {
    Write-Host "ℹ No hay cambios para commitear" -ForegroundColor Yellow
}

# Agregar remote si no existe
$remoteExists = git remote | Select-String -Pattern "origin"
if (-not $remoteExists) {
    Write-Host "🔗 Agregando remote origin..." -ForegroundColor Cyan
    git remote add origin https://github.com/valeriagarciatsuchikame/stillclubproject.git
} else {
    Write-Host "✓ Remote origin ya existe" -ForegroundColor Green
    # Actualizar URL si es necesario
    git remote set-url origin https://github.com/valeriagarciatsuchikame/stillclubproject.git
}

# Renombrar branch a main
Write-Host "🌿 Configurando branch main..." -ForegroundColor Cyan
git branch -M main

# Hacer push
Write-Host "⬆️ Haciendo push a GitHub..." -ForegroundColor Cyan
Write-Host "⚠️  Si te pide autenticación, usa tu Personal Access Token de GitHub" -ForegroundColor Yellow
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ ¡Push completado exitosamente!" -ForegroundColor Green
    Write-Host "🌐 Ve a: https://github.com/valeriagarciatsuchikame/stillclubproject" -ForegroundColor Cyan
} else {
    Write-Host "❌ Error al hacer push. Revisa los mensajes de error arriba." -ForegroundColor Red
    Write-Host "💡 Si el repositorio remoto ya tiene contenido, ejecuta:" -ForegroundColor Yellow
    Write-Host "   git pull origin main --allow-unrelated-histories" -ForegroundColor Yellow
    Write-Host "   git push -u origin main" -ForegroundColor Yellow
}

