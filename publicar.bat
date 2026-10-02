@echo off
rem Publica as mudancas da pagina no GitHub. De dois cliques neste arquivo.
cd /d "%~dp0"

git add -A
git diff --cached --quiet
if not errorlevel 1 (
  echo Nada para publicar: nenhum arquivo mudou desde a ultima publicacao.
  pause
  exit /b 0
)

echo Arquivos que vao ser publicados:
git status --short
echo.
set "MSG="
set /p MSG=Descreva a mudanca e aperte Enter (ou so Enter para usar a data):
if "%MSG%"=="" set "MSG=Atualiza a pagina em %date% %time:~0,5%"

git commit -m "%MSG%"
if errorlevel 1 (
  echo.
  echo O commit falhou. Nada foi enviado.
  pause
  exit /b 1
)

git push
if errorlevel 1 (
  echo.
  echo O envio falhou. A mudanca ficou salva neste computador; rode este arquivo de novo para tentar enviar.
  pause
  exit /b 1
)

echo.
echo Publicado. O site atualiza em 1 a 2 minutos.
pause
