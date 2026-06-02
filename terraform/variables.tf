variable "node_ip" {
  type        = string
  description = "Current IP of the Talos node in maintenance mode (used to reach Talos API on port 50000)"
}

variable "cluster_name" {
  type        = string
  description = "Name of the Talos cluster"
  default     = "talos-local"
}

variable "vip" {
  type        = string
  description = "Virtual IP for the cluster endpoint — assigned to the NIC alongside DHCP. Used as the stable kube-apiserver address."
}

variable "nic_mac_prefix" {
  type        = string
  description = "MAC address prefix for NIC selection. Proxmox VirtIO NICs use 'bc:24:11:*' by default. Check with 'talosctl --insecure -n <IP> get links' in maintenance mode."
  default     = "bc:24:11:*"
}
