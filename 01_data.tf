# Variables

variable "region" {
  type = string
  description = "Region"
  default = "ams3"
}

variable "public_key" {
  type        = string
  description = "Path to public key"
  default = "none"
}

variable "vpc_cidr" {
  type = string
  description = "CIDR Block definition of VPC"
  default = "10.4.0.0/16"
}


# Data sources

data "digitalocean_kubernetes_versions" "versions" {}
