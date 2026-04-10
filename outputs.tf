output "instance_id" {
  description = "ID de la instancia EC2"
  value       = module.ec2.instance_id
}

output "private_ip" {
  description = "IP privada de la instancia"
  value       = module.ec2.private_ip
}

output "public_ip" {
  description = "IP pública de la instancia"
  value       = module.ec2.public_ip
}
