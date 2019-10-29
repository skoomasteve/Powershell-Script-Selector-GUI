$userresponseend=[System.Windows.MessageBox]::Show("The following dialogue will allow you to select the application you would like to run", 'Script Selector - Application Selector','ok')
if ($UserResponseend -eq "ok" ) 
{

#Yes activity

} 

else 

{ 

exit

} 


$scriptPath = "C:\PSSSG\"
msg $env:UserName "Select the Application you would like to run"
$Selected = Get-ChildItem -Path $scriptpath | select name,lastwritetime,creationtime | Out-GridView -Title "Script Selector - Select the desired application" -PassThru | format-wide

if($null -eq $Selected) 
{

exit
}
else 
{
'OK was pressed, $Selected contains what was chosen'
#$scriptpath +="$selected"
& $selected
}


