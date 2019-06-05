# Terraform
Este é um projeto que contém scripts de terraform criados para orquestrar um ambiente de nuvem Oracle.

## Preparação do Ambiente
*Este processo é executado no video:*
 1. Crie uma instância no ambiente usando Oracle Linux versão 7.x;
 2. Utilize o script terraform.sh para facilitar o processo de preparação da instância;
 3. Altere o arquivo de env_vars com as informações referentes ao seu ambiente;
 4. Execute o arquivo env_vars com o comando "source env_vars" para criar as variaves de ambientes que serão usadas pelos arquivos de terraform;
 5. Execute o arquivo auth.tf para configurar o seu ambiente de Cloud Oracle como um provedor do terraform.
 *Documentação de Referência: https://www.terraform.io/docs/providers/oci/index.html*
 
## Criação de instância de Autonomous Data Warahouse
*Este processo é executado no video:*
 1. Acesse sua instância de terraform já pré-configurada;
 2. Altere o arquivo createDB.tf conforme a sua necessidade;
 3. Execute o arquivo createDB.tf;
*Documentação de Referência: https://www.terraform.io/docs/providers/oci/r/database_autonomous_database.html*
 
 
