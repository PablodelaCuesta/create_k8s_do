
terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.18.0"
    }
  }
}

variable "digital_ocean_token" {}

provider "digitalocean" {
  # Configuration options
  token = var.digital_ocean_token
}
