@echo off
echo Setting up Git repository...

REM Add Git to PATH temporarily
set PATH=%PATH%;C:\Program Files\Git\bin

REM Initialize Git repository
git init

REM Add all files
git add .

REM Make initial commit
git commit -m "Initial commit - Adding frontend files"

REM Add remote repository
git remote add origin https://github.com/newyork-devteam/edap-frontend.git

REM Create and switch to a new branch
git checkout -b frontend-pages

REM Push the new branch to GitHub
git push -u origin frontend-pages

echo Setup complete!
pause

