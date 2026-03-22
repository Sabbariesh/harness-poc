output "config_path" {
  value       = local_file.config.filename
  description = "Path to the generated config file"
}

output "environment" {
  value       = jsondecode(local_file.config.content)["environment"]
  description = "Environment name from the config"
}

output "message" {
  value       = jsondecode(local_file.config.content)["message"]
  description = "Provisioning message"
}