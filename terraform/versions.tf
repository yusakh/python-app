terraform {
  required_version = ">= 1.3"

  required_providers {
    talos = {
      source  = "siderolabs/talos"
      version = "~> 0.6"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}
