if ([string]::IsNullOrEmpty($env:chocolateyInstallArguments)) 
{
	wuInstall /install /logfile_append c:\wuinstall.log /disable_ie_firstruncustomize /disableprompt /reboot_if_needed /autoaccepteula /rebootcycle 3 /quiet
}
else
{
	wuInstall $env:chocolateyInstallArguments	
}


