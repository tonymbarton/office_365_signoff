# Make sure you first install AzureAD module with Install-Module -Name AzureAD

Connect-AzureAD -credential $credential

Get-AzureADUser -all $true | where {$_.userprincipalname -like "*mydomain.com"} | Revoke-AzureADUserAllRefreshToken