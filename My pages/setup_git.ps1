# PowerShell script to set up Git repository
Write-Host "Setting up Git repository..." -ForegroundColor Green

# Add Git to PATH temporarily
$env:PATH += ";C:\Program Files\Git\bin"

# Initialize Git repository
Write-Host "Initializing Git repository..." -ForegroundColor Yellow
git init

# Configure Git user (you'll need to set these)
Write-Host "Configuring Git user..." -ForegroundColor Yellow
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"

# Add all files
Write-Host "Adding files to Git..." -ForegroundColor Yellow
git add .

# Make initial commit
Write-Host "Making initial commit..." -ForegroundColor Yellow
git commit -m "Initial commit - Adding frontend files"

# Add remote repository
Write-Host "Adding remote repository..." -ForegroundColor Yellow
git remote add origin https://github.com/newyork-devteam/edap-frontend.git

# Create and switch to a new branch
Write-Host "Creating new branch 'frontend-pages'..." -ForegroundColor Yellow
git checkout -b frontend-pages

# Push the new branch to GitHub
Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
git push -u origin frontend-pages

Write-Host "Setup complete!" -ForegroundColor Green
Write-Host "Your files are now connected to GitHub repository." -ForegroundColor Green
Write-Host "Branch: frontend-pages" -ForegroundColor Cyan
Write-Host "Repository: https://github.com/newyork-devteam/edap-frontend.git" -ForegroundColor Cyan

