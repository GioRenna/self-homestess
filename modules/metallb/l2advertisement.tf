resource "kubernetes_manifest" "l2_adv" {
  manifest = {
    apiVersion = "metallb.io/v1beta1"
    kind       = "L2Advertisement"
    metadata = {
      name      = "default-adv"
      namespace = "metallb-system"
    }
  }
}
