param (
    [string]$TargetFolder = "."
)

$resolvedPath = (Resolve-Path $TargetFolder -ErrorAction SilentlyContinue).Path

if (-not $resolvedPath -or -not (Test-Path $resolvedPath -PathType Container)) {
    Write-Host "Error: Target folder not found -> $TargetFolder" -ForegroundColor Red
    exit 1
}

$word = New-Object -ComObject Word.Application
$word.Visible = $false

try {
    $files = Get-ChildItem -Path $resolvedPath -Filter *.docx | Where-Object { $_.Name -notlike "~*" }
    
    if ($files.Count -eq 0) {
        Write-Host "No .docx files found in the target folder." -ForegroundColor Yellow
        exit 0
    }

    foreach ($file in $files) {
        Write-Host "Converting: $($file.Name)"
        $doc = $word.Documents.Open($file.FullName)
        $pdfPath = [System.IO.Path]::ChangeExtension($file.FullName, ".pdf")
        $doc.SaveAs([ref]$pdfPath, [ref]17)
        $doc.Close()
    }
    Write-Host "Done: Converted $($files.Count) file(s) to PDF." -ForegroundColor Green
}
finally {
    $word.Quit()
    [System.Runtime.Interopservices.Marshal]::ReleaseComObject($word) | Out-Null
}
