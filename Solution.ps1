$date = Read-Host "What is today's date"
$name = Read-Host "Please enter your name"
Write-Output "Today's date is $date."
Write-Output "Today is the day $name began a PowerShell programming journey"

<#
KNOWLEDGE CHECK:
1. How does PowerShell compile?
    PowerShell code is compiled to an abstract syntax tree (AST), checked for issues, and then translated again so the computer can understand it

2. Which of the following statements is true about PowerShell.
    You can enclose strings in either single or double quotations marks

3. What is wrong with this line of code? Read-host "What is wrong with this line of code?"
    Nothing is wrong with this command. It should run normally
#>