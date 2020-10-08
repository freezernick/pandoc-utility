@echo off
if [%1]==[] goto :eof
:loop
pandoc --to=docx --output="%~dp1%~n1.docx" %1
shift
if not [%1]==[] goto loop