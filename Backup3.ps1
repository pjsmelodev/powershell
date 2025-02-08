Param(
     [string]$Path = './app',
     [string]$DestinationPath = './'
   )

If ($PathIsWebApp -eq $True) {
    Try 
    {
    $ContainsApplicationFiles = "$((Get-ChildItem $Path).Extension | Sort-Object -Unique)" -match  '\.js|\.html|\.css'
 
If ( -Not $ContainsApplicationFiles) {
        Throw "Not a web app"
      } Else {
        Write-Host "Source files look good, continuing"
      }
    } Catch {
     Throw "No backup created due to: $($_.Exception.Message)"
    }
}

If(-Not (Test-Path $Path)) 
{
   Throw "The source directory $Path does not exist, please specify an existing directory"
}

$date = Get-Date -format "yyyy-MM-dd"

$DestinationFile = "$($DestinationPath + 'backup-' + $date + '.zip')"
If (-Not (Test-Path $DestinationFile)) 
{
  Compress-Archive -Path $Path -CompressionLevel 'Fastest' -DestinationPath "$($DestinationPath + 'backup-' + $date)"
  Write-Host "Created backup at $($DestinationPath + 'backup-' + $date + '.zip')"
} Else {
  Write-Error "Today's backup already exists"
}

# Get-ChildItem -> usado para especificar elementos dentro do elemento atual

<#
KNOWLEDGE CHECK:
1. Which file extension is correct for a script?
    .ps1

2. What's the correct way to declare a required parameter?
    Add this decorator: [Parameter(Mandatory)]

3. How can you cause a terminating error?
    Use the keyword Throw followed by a string or object

KNOWLEDGE CHECK:
1. You want to start PowerShell 7 from the command line. Which command will you run? 
    pwsh.exe

2. Why might you decide to use the ISE versus the console host?
    Supports richer editing capabilities and can display a wider range of fonts
#>