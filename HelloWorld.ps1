#Write-Output 'Hello World!'~

$name = Read-Host -Prompt "Please enter your name"
# a variável name vai ler informação do prompt para fazer a atribuição
Write-Output "Congratulations $name! You have written your first code with PowerShell!"
# vai usar o valor da variável name para escrever a string

# Get-Help -Name 'Write-Output' -Full