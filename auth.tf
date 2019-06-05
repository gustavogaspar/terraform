#Este script tem como função carregar as informações do seu ambiente de cloud para o Terraform
#Este script é requerido para executar o comando "terraform init"
#Variaveis

variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "ssh_public_key" {}
variable "region" {}

#Script de autenticação (ref. https://www.terraform.io/docs/providers/oci/index.html)

provider "oci" {
  tenancy_ocid = "${var.tenancy_ocid}"
  user_ocid = "${var.user_ocid}"
  fingerprint = "${var.fingerprint}"
  private_key_path = "${var.private_key_path}"
  region = "${var.region}"
}