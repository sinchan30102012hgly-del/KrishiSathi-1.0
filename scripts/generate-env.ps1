param(
    [string]$OutputPath = (Join-Path $PSScriptRoot "..\\env.js")
)

$apiKey = $env:GEMINI_API_KEY
if (-not $apiKey) {
    throw "GEMINI_API_KEY is not set in the environment."
}

$escapedApiKey = $apiKey.Replace("'", "''")
$content = @"
window.__ENV__ = {
    GEMINI_API_KEY: '$escapedApiKey'
};
"@

Set-Content -Path $OutputPath -Value $content -Encoding UTF8
Write-Output "Generated environment file: $OutputPath"
