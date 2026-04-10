output "state_bucket_name" {
  description = "Nombre del bucket S3; configúralo como secreto TF_STATE_BUCKET en GitHub Actions"
  value       = aws_s3_bucket.tfstate.bucket
}

output "dynamodb_lock_table_name" {
  description = "Nombre de la tabla DynamoDB; configúralo como secreto TF_LOCK_TABLE en GitHub Actions"
  value       = aws_dynamodb_table.tf_lock.name
}

output "state_object_key" {
  description = "Key recomendada para el objeto de estado (usar en terraform init -backend-config)"
  value       = var.state_key_prefix
}

output "aws_region" {
  value = var.aws_region
}
