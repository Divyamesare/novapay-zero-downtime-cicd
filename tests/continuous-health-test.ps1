$ErrorActionPreference = "SilentlyContinue"
$total = 100
$success = 0
$failed = 0

Write-Host "Starting 100 health requests..."

for ($i = 1; $i -le $total; $i++) {
    try {
        $response = Invoke-RestMethod -Uri "http://localhost:8088/api/health" -TimeoutSec 3
        if ($response.status -eq "UP") {
            $success++
        } else {
            $failed++
        }
    } catch {
        $failed++
    }
    Start-Sleep -Milliseconds 100
}

Write-Host "Total requests: $total"
Write-Host "Successful: $success"
Write-Host "Failed: $failed"
