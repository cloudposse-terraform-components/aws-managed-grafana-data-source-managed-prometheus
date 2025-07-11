terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0, < 6.0.0"
    }
    grafana = {
      source  = "grafana/grafana"
      version = ">= 2.18.0"
    }
  }
}
