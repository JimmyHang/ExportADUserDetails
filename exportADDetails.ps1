Get-ADUser -Filter {Enabled -eq $true} -SearchBase "OU=Users,OU=Company,DC=Company,DC=com" -Properties * | `
Select -Property givenName, sn, sAMAccountName, userPrincipalName, Mail, Department, physicalDeliveryOfficeName, company, homeDirectory | `
  Export-CSV "D:\Temp\ADUserDetails.csv" -NoTypeInformation -Encoding UTF8
