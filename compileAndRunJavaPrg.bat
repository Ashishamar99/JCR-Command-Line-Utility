@echo off
:: /f is used to denote file input, here file input is basically the string which is the file name.
:: https://ss64.com/nt/for_f.html --> Explanation of for loop in batch file.
:: Comments in batch file --> https://www.shellhacks.com/batch-file-comment-remark-windows/
set completeFileName=%1
if not defined completeFileName (echo Whup! Please enter a java file name & echo.Give the filename with the java extension and try again && exit /b)
for /f "tokens=1 delims=." %%f in ("%completeFileName%") do (
	set filename=%%f
)
echo "The file name is:: %filename%"
javac %filename%.java
java %filename%

rem Support Links Used -->
rem https://stackoverflow.com/questions/2541767/what-is-the-proper-way-to-test-if-a-parameter-is-empty-in-a-batch-file
rem https://stackoverflow.com/questions/132799/how-can-i-echo-a-newline-in-a-batch-file
rem https://stackoverflow.com/questions/8055371/how-do-i-run-two-commands-in-one-line-in-windows-cmd
rem https://www.google.com/search?client=firefox-b-d&q=exit+batch+script
rem https://www.tutorialspoint.com/batch_script/batch_script_if_else_statement.htm
rem https://stackoverflow.com/questions/32480655/batch-check-for-empty-user-input