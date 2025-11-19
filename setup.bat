@echo off
REM Quick Setup Script for GitHub Pages Deployment
REM Innovation Sourcing Strategy Tool v1.1

echo ===================================
echo GitHub Pages Deployment Setup
echo ===================================
echo.

REM Check if git is installed
git --version >nul 2>&1
if errorlevel 1 (
    echo [X] Git is not installed. Please install Git first:
    echo    Download from: https://git-scm.com/download/win
    pause
    exit /b 1
)

echo [Y] Git is installed
echo.

REM Get GitHub username
set /p github_username="Enter your GitHub username: "
if "%github_username%"=="" (
    echo [X] GitHub username is required
    pause
    exit /b 1
)

REM Get repository name
set /p repo_name="Enter repository name (default: sourcing-strategy-tool): "
if "%repo_name%"=="" set repo_name=sourcing-strategy-tool

echo.
echo Configuration:
echo    GitHub Username: %github_username%
echo    Repository Name: %repo_name%
echo    Future URL: https://%github_username%.github.io/%repo_name%/
echo.
echo [!] Make sure you've created the repository on GitHub first!
echo    Go to: https://github.com/new
echo    Repository name: %repo_name%
echo    Visibility: Public
echo    Don't initialize with README
echo.
echo Press Enter when repository is created, or Ctrl+C to cancel...
pause >nul

REM Initialize git repository
echo.
echo [*] Initializing git repository...
git init

REM Add all files
echo [*] Adding files...
git add .

REM Create initial commit
echo [*] Creating initial commit...
git commit -m "Initial commit: Innovation Sourcing Strategy Tool v1.1" -m "Features: 10-question assessment, 4 sourcing approaches, progress auto-save, currency-neutral, screenshot export, assessment history, mobile responsive. Grade: A- (88/100)"

REM Set main branch
echo [*] Setting main branch...
git branch -M main

REM Add remote
echo [*] Adding GitHub remote...
git remote add origin https://github.com/%github_username%/%repo_name%.git

REM Push to GitHub
echo [*] Pushing to GitHub...
git push -u origin main

if errorlevel 0 (
    echo.
    echo [Y] Successfully deployed to GitHub!
    echo.
    echo Next steps:
    echo    1. Go to: https://github.com/%github_username%/%repo_name%/settings/pages
    echo    2. Under 'Source', select: 'Deploy from a branch'
    echo    3. Branch: 'main', Folder: '/ (root)'
    echo    4. Click 'Save'
    echo    5. Wait 1-2 minutes
    echo    6. Your tool will be live at:
    echo       https://%github_username%.github.io/%repo_name%/
    echo.
    echo [Y] Setup complete!
) else (
    echo.
    echo [X] Push failed. Common issues:
    echo    - Repository doesn't exist on GitHub
    echo    - Authentication failed (need Personal Access Token)
    echo    - Repository name doesn't match
    echo.
    echo See docs\deployment-guide.md for detailed troubleshooting
)

echo.
pause
