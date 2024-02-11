az snapshot create --resource-group <snapshot-resource-group> --name <snapshot-name> --source <managed-disk-id>
az deployment group create --resource-group sourceRG --template-file diskFromSnapshot.json --parameters storageAccountType=Standard_GRS adminUsername=azureuser
az deployment group create --resource-group destRG --template-file destVM.json --parameters storageAccountType=Standard_GRS adminUsername=azureuser
az deployment group show -g <resource-group-name> -n <deployment-name> --query 'properties.outputs.publicIpAddress.value'
