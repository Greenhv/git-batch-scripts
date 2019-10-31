@echo off
if "%~1" == "" (
  set GITBRANCH=
  for /f "tokens=2" %%I in ('git.exe branch 2^> NUL ^| findstr /b "* "') do set GITBRANCH=%%I
  echo test
  echo GITBRANCH="%GITBRANCH%"

  git pull origin %GITBRANCH%
) else (
  git pull origin %*
)