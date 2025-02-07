Param(
    # cria um parâmetro chamado Path
    $Path
)
If (-Not $Path -eq '') {
    # -Not -> negação
    # -eq -> teste de igualdade
    # se a variável path não for vazia
    <#
        Operadores de comparação:
            * -eq -> igualdade (equal)
            * -ne -> desigualdade (not equal)
            * -gt -> maior que (greater than)
            * -lt -> menor que (less than)
            * -ge -> maior ou igual (greater or equal)
            * -le -> menor ou igual (less or equal)
    #>
    # cria um novo item com o valor de Path (string contida nele)
    New-Item $Path
    # usa o valor de Path para fazer o print de uma frase
    Write-Host "File created at path $Path"
} Else {
    # caso contrário, indica que o Path está vazio
    Write-Error "Path cannot be empty"
}