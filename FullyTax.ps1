# Valores possíveis: 'Minor', 'Adult', 'Senior Citizen'
$Status = 'Minor'
If ($Status -eq 'Minor')
{
    Write-Host $false
} ElseIf ($Status -eq 'Adult') {
    Write-Host $True
} Else {
    Write-Host $False
}