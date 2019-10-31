$scriptPath = "C:\PSSSG\"


$Selected = Get-ChildItem -Path $scriptpath | select name -ExpandProperty name | Out-GridView -Title "Script Selector - Select the desired application" -PassThru | format-wide


$Selected = $selected | out-string


$newvar = "$scriptpath$selected"

powershell -file "$newvar" -noninteractive
