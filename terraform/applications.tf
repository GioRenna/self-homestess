# Namespace per le applicazioni
resource "kubernetes_namespace" "apps" {
  metadata {
    name = "apps"
  }
}

# Qui aggiungeremo in futuro le applicazioni come PhotoPrism e Jellyfin
