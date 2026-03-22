terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }
  }
}

resource "local_file" "config" {
  content  = jsonencode({
    environment = "poc"
    timestamp   = timestamp()
    message     = "Provisioned by Terraform via Harness"
  })
  filename = "${path.module}/../output/config.json"
}

output "config_path" {
  value = local_file.config.filename
}