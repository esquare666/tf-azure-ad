provider "azuread" {
  version = "~> 0.7.0"
}

resource "azuread_user" "home" {
  user_principal_name = "home@3es.nz"
  display_name        = "Elan Home"
  usage_location      = var.usage_location
}
