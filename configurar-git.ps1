# Script para configurar Git con tu cuenta de GitHub
# Ejecutar desde PowerShell: .\configurar-git.ps1

Write-Host "⚙️  Configurando Git para GitHub..." -ForegroundColor Cyan

# Verificar que Git está instalado
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "✗ Git no está instalado o no está en el PATH" -ForegroundColor Red
    Write-Host "Por favor instala Git desde: https://git-scm.com/download/win" -ForegroundColor Yellow
    Write-Host "Después de instalar, reinicia PowerShell y ejecuta este script nuevamente." -ForegroundColor Yellow
    exit 1
}

Write-Host "✓ Git está disponible" -ForegroundColor Green

# Configurar nombre de usuario
Write-Host "📝 Configurando nombre de usuario..." -ForegroundColor Cyan
git config --global user.name "valeriagarciatsuchikame"
Write-Host "✓ Nombre de usuario configurado: valeriagarciatsuchikame" -ForegroundColor Green

# Configurar email (usando email noreply de GitHub)
Write-Host "📧 Configurando email..." -ForegroundColor Cyan
$email = "valeriagarciatsuchikame@users.noreply.github.com"
git config --global user.email $email
Write-Host "✓ Email configurado: $email" -ForegroundColor Green

# Configurar credential helper para Windows
Write-Host "🔐 Configurando credential helper..." -ForegroundColor Cyan
git config --global credential.helper wincred
Write-Host "✓ Credential helper configurado" -ForegroundColor Green

# Mostrar configuración
Write-Host "`n📋 Configuración actual de Git:" -ForegroundColor Cyan
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Gray
git config --global --list | Select-String -Pattern "user|credential"
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Gray

Write-Host "`n✅ ¡Configuración completada!" -ForegroundColor Green
Write-Host "`n💡 Próximos pasos:" -ForegroundColor Yellow
Write-Host "   1. Si quieres usar tu email real, ejecuta:" -ForegroundColor White
Write-Host "      git config --global user.email `"tu-email@ejemplo.com`"" -ForegroundColor Gray
Write-Host "   2. Para hacer push al repositorio, ejecuta:" -ForegroundColor White
Write-Host "      .\push-to-github.ps1" -ForegroundColor Gray

