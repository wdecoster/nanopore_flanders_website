# PowerShell script to help set up WSL for Hugo development
# Run this in PowerShell as Administrator

Write-Host "🚀 Setting up WSL for Hugo development..." -ForegroundColor Green

# Check if WSL is installed
try {
    $wslVersion = wsl --status 2>&1
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✅ WSL is already installed" -ForegroundColor Green
    }
} catch {
    Write-Host "❌ WSL not found. Installing WSL..." -ForegroundColor Yellow
    Write-Host "💡 This requires Administrator privileges and a restart" -ForegroundColor Yellow
    
    # Install WSL
    wsl --install
    
    Write-Host "⚠️  Please restart your computer and run this script again" -ForegroundColor Red
    exit
}

# Check if Ubuntu is installed
$ubuntuInstalled = wsl -l -v | Select-String "Ubuntu"
if (-not $ubuntuInstalled) {
    Write-Host "📦 Installing Ubuntu distribution..." -ForegroundColor Yellow
    wsl --install -d Ubuntu
}

Write-Host "✅ WSL setup complete!" -ForegroundColor Green
Write-Host ""
Write-Host "📋 Next steps:" -ForegroundColor Cyan
Write-Host "1. Open Ubuntu from Start Menu" -ForegroundColor White
Write-Host "2. Run: cd /mnt/c/repos/nanopore_flanders_website" -ForegroundColor White
Write-Host "3. Run: ./setup-wsl.sh" -ForegroundColor White
Write-Host ""
Write-Host "💡 For VS Code integration:" -ForegroundColor Cyan
Write-Host "1. Install 'Remote - WSL' extension" -ForegroundColor White
Write-Host "2. Open folder in WSL: Ctrl+Shift+P → 'Remote-WSL: Open Folder in WSL'" -ForegroundColor White
