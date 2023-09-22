terraform {
  required_providers {
    kubectl = {
      source = "gavinbunney/kubectl"
      version = "1.14.0"
    }
  }
}

provider "kubectl" {
  # Configuration options
  config_path = "../kubernetes/kubeconfig.yaml"
}

resource "kubectl_manifest" "deployment" {
  yaml_body = file("../kubernetes/deployment.yaml")
}
