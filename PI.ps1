# comentário de uma linha
<#
    bloco
    de
    comentários
#>

# variável
$PI = 3.14

# print
Write-Host "The value of `$PI is $PI"

# singles quotes não permite string interpolation
Write-Host 'Here is $PI'
# double quotes permite string interpolation
Write-Host "Here is $PI"

# é possível usar expressões com ()
Write-Host "An expression $($PI + 1)"

<#
SCOPE:

Global scope
Script scope
Local scope

SCOPE RULES:
    * Scopes podem ser aninhados
    * Items são visíveis no escopo atual e nos escopos filhos

PARAMETERS:
Keyword: Param()
#>