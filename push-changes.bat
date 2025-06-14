@echo off
REM This script adds, commits, and pushes changes
git add .
git commit -m "chore: auto-sync file changes"
git push origin main
echo "Changes pushed."
pause