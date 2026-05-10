Write-Host "Starting AI Hybrid Stack..."

cd $PSScriptRoot\..

docker compose pull

docker compose up -d

Write-Host "AI Hybrid Stack started successfully"
Write-Host "Open WebUI: http://localhost:3000"
Write-Host "n8n: http://localhost:5678"
Write-Host "LiteLLM API: http://localhost:4000/v1/models"
Write-Host "Qdrant: http://localhost:6333"
