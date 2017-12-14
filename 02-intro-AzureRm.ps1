# find and install AzureRm module from PowerShell galery

find-module AzureRm
# install-module AzureRm

# Get info about module
get-module AzureRm

# Enumerate get available azure commands
gcm get-*azure*

# Enumerate azure vm commands
gcm get-*azure*VM

# login!
Login-AzureRmVM

# don't do it every time (stay logged in)  https://docs.microsoft.com/en-us/powershell/module/azurerm.profile/enable-azurermcontextautosave?view=azurermps-5.0.0
# Enable-AzureRmContextAutosave 


# get all azure resource manager vms
Get-AzureRmVM
help Get-AzureRmVM

# get my subscriptions
Get-AzureSubscription

# get a specific vm
Get-AzureRmVM -ResourceGroupName "DEMO" -Name "DemoDC16"


# other useful commands
Get-AzureRmLocation
Get-AzureRmVmSize	
Get-AzureRmStorageAccount
Get-AzureRmNetworkInterface

Start-AzureRmVm -ResourceGroupName "DEMO" -Name "DemoDC16"
Stop-AzureRmVm -ResourceGroupName "DEMO" -Name "DemoDC16"