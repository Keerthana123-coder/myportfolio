@echo off
echo ====================================
echo Starting auto-push script...
echo ====================================

echo.
echo Step 1: Staging all changes (git add .)
git add .
echo.

echo Step 2: Checking for changes to commit...
git diff-index --quiet HEAD --
if %errorlevel% equ 0 (
    echo No changes to commit. Working tree is clean.
    echo Script finished.
    echo.
    goto end
)

echo Changes detected! Committing...
git commit -m "chore: auto-sync file changes"
echo.

echo Step 3: Pushing to remote repository (git push)...
git push origin main
echo.

echo ====================================
echo      Push complete!
echo ====================================

:end