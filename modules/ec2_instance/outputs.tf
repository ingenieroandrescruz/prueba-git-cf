output "instance_id" {
  description = "ID de la instancia EC2"
  value       = aws_instance.this.id
}

output "private_ip" {
  description = "IP privada de la instancia"
  value       = aws_instance.this.private_ip
}

output "public_ip" {
  description = "IP pública de la instancia (vacía si no hay asociación)"
  value       = aws_instance.this.public_ip
}
