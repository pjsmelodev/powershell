Param(
  [string]$Path = './app',
  [string]$DestinationPath = './'
)
# cria uma variável date com o valor da data atual (obtido via Get-Date) no formato aaaa-mm-dd
$date = Get-Date -Format "yyyy-MM-dd"
# usa o cmdlet Compress-Archive para comprimir o conteúdo no path ./app
Compress-Archive -Path './app' -CompressionLevel 'Fastest' -DestinationPath "./backup-$date"
# com o nível de compressão mais rápido
# na diretoria destino -> usa o valor da variável date para criar uma nova pasta a cada uso diário
Write-Host "Created backup at $('./backup-' + $date + '.zip')"
# faz print

