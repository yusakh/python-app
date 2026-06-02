locals {
  output_dir = "${path.module}/../output"
}

resource "local_sensitive_file" "kubeconfig" {
  content         = data.talos_cluster_kubeconfig.this.kubeconfig_raw
  filename        = "${local.output_dir}/kubeconfig-backstage.yaml"
  file_permission = "0600"
}

resource "local_sensitive_file" "talosconfig" {
  content         = data.talos_client_configuration.this.talos_config
  filename        = "${local.output_dir}/talosconfig-backstage.yaml"
  file_permission = "0600"
}

output "cluster_endpoint" {
  value       = local.cluster_endpoint
  description = "Kubernetes API server endpoint (via VIP)"
}
