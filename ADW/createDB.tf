# Exemplo de script de criacao de base de dados autonoma.
# Ref. https://www.terraform.io/docs/providers/oci/r/database_autonomous_database.html .
# Alguns valores nesse codigo foram atribuidos diretamente (ex. admin_password, cpu_core_count e etc.),
# essa pratica nao e recomendada para ambientes de producao por questoes de seguranca.

variable "compartment_ocid" {}
resource "oci_database_autonomous_database" "testADW" {
    #Required
    admin_password = "Oracle@123456"
    compartment_id = "${var.compartment_ocid}"
    cpu_core_count = "1"
    data_storage_size_in_tbs = "1"
    db_name = "dbADW"

    #Optional
    db_workload = "DW"
    display_name = "TerraformADW"
}