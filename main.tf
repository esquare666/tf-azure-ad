provider "azuread" {
  version = "~> 0.7.0"
}

resource "azuread_user" "home" {
  user_principal_name = "home@3es.nz"
  display_name        = "Elan Home"
  password            = "Password@1234"
  usage_location      = var.usage_location
}
