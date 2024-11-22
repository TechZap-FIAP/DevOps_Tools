#!/bin/bash

# 2.1 - Cria o Grupo de Recursos
resourceGroupName="RgTechZap-WebApps"
az group create --name $resourceGroupName --location eastus2

# 2.2 - Cria o Plano de Serviço
echo "Informe o nome do plano de serviço (TechZapPlan):"
read -r appserviceplanname

# Cria o plano de serviço com SKU F1 (Gratuito)
az appservice plan create --resource-group $resourceGroupName --name "$appserviceplanname" --location eastus2 --sku F1 --is-windows

# 2.3 - Cria o Serviço de Aplicativo
echo "Informe o nome do serviço de aplicativo (APITechZap):"
read -r webappname

# Cria o Web App
az webapp create \
  --resource-group $resourceGroupName \
  --name "$webappname" \
  --plan "$appserviceplanname" \
  --runtime "DOTNETCORE|8.0"