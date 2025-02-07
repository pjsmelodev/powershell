Param (
  $Path
)
New-Item $Path # Creates a new file at $Path.
Write-Host "File $Path was created"

<#
    Para invocar um script com um parâmetro é preciso fornecer um nome e um valor
    exemplo: ./CreateFile.ps1 -Path './newfile.txt' -> cria um ficheiro de texto chamado newfile na diretoria atual
    exemplo: ./CreateFile.ps1 -Path './anotherfile.txt'
#>