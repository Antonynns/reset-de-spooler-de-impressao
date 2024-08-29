@echo off
echo Reiniciando o serviço de spooler de impressão, aguarde
net stop spooler
echo Limpando arquivos do spooler...
del /Q /F /S "%systemroot%\System32\spool\PRINTERS\*.*"
net start spooler
echo Serviço de spooler de impressão reiniciado com sucesso!
pause
