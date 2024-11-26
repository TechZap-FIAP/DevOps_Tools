# Documentação da API - TechZap

Esta documentação descreve a plataforma **S.O.L** da empresa **TechZap**, uma solução SaaS desenvolvida para auxiliar as pessoas, empresas e entre outros a alcançarem metas de sustentabilidade e economia de energia.

## Integrantes

- **RM99513** - Rodrigo Batista Freire - Java Advanced
- **RM99562** - Kaique Santos de Andrade - Mobile Development
- **RM99466** - Marcelo Augusto de Mello Paixão - Development with .NET, Disruptive Architectures (IOT) e DevOps Tools & Cloud Computing
- **RM97967** - Vinicius Oliveira de Almeida - Mastering Database
- **RM98644** - Thiago Martins Bezerra - Compliance Assurance

# Links Utéis

[Link do Vídeo Pitch](https://youtu.be/vPfHoWRXsYk)

[Link do Vídeo da Aplicação Funcional](https://youtu.be/usg-Rg47VBU)

[Link da APITechZap .NET na Web utilizando a Azure Pipelines](https://apitechzap.azurewebsites.net/swagger/index.html)

# Primeiros Passos

No Portal da Azure Cloud, vá em CLI e ative os recursos para utilização da CLI.

Faça os seguintes passos para criar o WebApp que será utilizado no Azure DevOps para subir a API,

 - touch ./webapp_create.sh
 - nano ./webapp_create.sh (Copie tudo do arquivo DotNet-WebApp.txt no Repositório e cole dentro do arquivo .sh)
 - cat ./webapp_create.sh (Imprime os dados dentro do arquivo, apenas para verificação)
 - chmod +x ./webapp_create.sh (Muda a permissão do arquivo)
 - ./webapp_create.sh (Executa o arquivo)

# Desenho de Arquitetura

![Desenho da Arquitetura DevOps](<Arquitetura Azure DevOps.jpg>)

# API Endpoints

## Address Controller
- **GET** -> `/api/address/{userId}` (Get Address by User ID)
- **POST** -> `/api/address/{userId}` (Add Address for User)
- **PUT** -> `/api/address/{userId}` (Update Address for User)

## Users Controller
- **POST** -> `/api/user/login` (User Login)
- **GET** -> `/api/user` (Get All Users)
- **GET** -> `/api/user/{id}` (Get User by ID)
- **POST** -> `/api/user/register` (Register New User)
- **PUT** -> `/api/user/update/{userId}` (Update User)
- **DELETE** -> `/api/user/delete/{userId}` (Delete User)
- **POST** -> `/api/user/reactivate/{userId}` (Reactivate User)
- **POST** -> `/api/user/forgot-password/{actualEmail}` (Reset Password)

## User Additional Data Controller
- **GET** -> `/api/user-additional-data/{userId}` (Get Additional Data by User ID)
- **POST** -> `/api/user-additional-data/{userId}` (Add Additional Data for User)
- **PUT** -> `/api/user-additional-data/{userId}` (Update Additional Data for User)

## Solar Panel Controller
- **POST** -> `/api/solar-panel` (Add Solar Panel)
- **POST** -> `/api/solar-panel/type/{solarPanelId}` (Add Type for Solar Panel)
- **GET** -> `/api/solar-panel` (Get All Solar Panels)
- **GET** -> `/api/solar-panel/{id}` (Get Solar Panel by ID)

## Wind Turbine Controller
- **POST** -> `/api/wind-turbine` (Add Wind Turbine)
- **POST** -> `/api/wind-turbine/type/{windTurbineId}` (Add Type for Wind Turbine)
- **GET** -> `/api/wind-turbine` (Get All Wind Turbines)
- **GET** -> `/api/wind-turbine/{id}` (Get Wind Turbine by ID)

## Contracted Plan Controller
- **POST** -> `/api/contracted-plan/add-contracted-plan/{userId}` (Add Contracted Plan)
- **GET** -> `/api/contracted-plan/get-contracted-plan/{userId}` (Get Contracted Plans by User ID)
- **DELETE** -> `/api/contracted-plan/del-contracted-plan/{planId}` (Delete Contracted Plan)

## AI Controller
- **GET** -> `/api/support` (AI Support Service)

# Observações

O método de IA para o suporte e auxilio ao cliente não funciona, pois não temos créditos ou recursos necessários para manté-lo funcional.
