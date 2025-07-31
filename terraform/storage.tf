# Crea namespace per lo storage
resource "kubernetes_namespace" "storage" {
  metadata {
    name = "local-path-storage"
  }
}

# Installa Local Path Provisioner
resource "kubernetes_storage_class" "local_path" {
  metadata {
    name = "local-path"
    annotations = {
      "storageclass.kubernetes.io/is-default-class" = "true"
    }
  }

  storage_provisioner = "k8s.io/local-path"

  reclaim_policy        = "Delete"
  volume_binding_mode   = "WaitForFirstConsumer"
  allow_volume_expansion = true
}
