variable "ami_id" {
  description = "ID de la AMI para la instancia"
  type        = string
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
}

variable "key_name" {
  description = "Nombre del key pair de EC2 para SSH"
  type        = string
}

variable "instance_name" {
  description = "Valor de la etiqueta Name"
  type        = string
  default     = "MiEC2Basica"
}

variable "tags" {
  description = "Etiquetas adicionales para la instancia"
  type        = map(string)
  default     = {}
}
