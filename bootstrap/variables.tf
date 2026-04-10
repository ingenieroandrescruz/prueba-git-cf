variable "aws_region" {
  description = "Región donde se crean el bucket de estado y la tabla de bloqueo"
  type        = string
  default     = "us-east-2"
}

variable "dynamodb_lock_table_name" {
  description = "Nombre de la tabla DynamoDB para bloqueo de estado de Terraform"
  type        = string
  default     = "prueba-git-cf-tf-locks"
}

variable "state_key_prefix" {
  description = "Prefijo para el objeto de estado en S3 (informativo; la key completa se configura en la raíz)"
  type        = string
  default     = "prueba-git-cf/terraform.tfstate"
}
