# KrishiSathi-1.0
Agricultural digitalization project

# Introduction
This is an open source project designed by Sinchan Dey and Rohan Mondal that includes two main parts - KrishiSahayak 1.0, the website and KrishiYantra 1.0, the hardware or robotics part.

# Gemini API key from environment
The Gemini API key is now loaded from `window.__ENV__.GEMINI_API_KEY` in `env.js` instead of hardcoded in HTML files.

1. Set your environment variable (PowerShell):
```powershell
$env:GEMINI_API_KEY="your_real_key_here"
```

2. Generate `env.js` from environment:
```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\generate-env.ps1
```

3. Start/serve the site normally. The Gemini pages will read the key from `env.js`.

Use `env.example.js` as a reference for the expected format.
