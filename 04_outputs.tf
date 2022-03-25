output "k8s_versions" {
  value = data.digitalocean_kubernetes_versions.versions.valid_versions
}