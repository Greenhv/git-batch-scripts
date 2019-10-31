@echo off
if "%~1" == "" (
  set GITBRANCH=
  for /f "tokens=2" %%I in ('git.exe branch 2^> NUL ^| findstr /b "* "') do set GITBRANCH=%%I

  git push origin %GITBRANCH% %*
) else (
  git push origin %*
)