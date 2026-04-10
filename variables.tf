variable "aws_region" {
  description = "Región de AWS para el provider y recursos"
  type        = string
  default     = "us-east-2"
}

variable "key_name" {
  description = "Nombre del KeyPair para SSH"
  type        = string
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  description = "AMI ID"
  type        = string
}

variable "instance_name" {
  description = "Etiqueta Name de la instancia"
  type        = string
  default     = "MiEC2Basica"
}

variable "default_tags" {
  description = "Etiquetas por defecto en todos los recursos compatibles con default_tags del provider"
  type        = map(string)
  default     = {}
}
