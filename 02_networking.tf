resource "digitalocean_vpc" "example" {
  name     = "Kubernetes-network"
  region   = var.region
  ip_range = var.vpc_cidr
}

resource "digitalocean_kubernetes_cluster" "cluster" {
  name   = "kubernetes-project"
  region = var.region
  version = data.digitalocean_kubernetes_versions.versions.latest_version
  tags = [ "testing" ]
  node_pool {
    name       = "worker-pool"
    size       = "s-2vcpu-2gb"
    node_count = 3
  }
}