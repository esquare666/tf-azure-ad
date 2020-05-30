provider "azuread" {
  version = "~> 0.7.0"
}

resource "azuread_user" "main" {
  user_principal_name = "home@3es.nz"
  display_name        = "Elan Home"
  #Var is created in env. export TF_VAR_password="wjwgergnerjgnerjkg@fgjner43"
  password            = var.password
  force_password_change = false
  usage_location      = var.usage_location
}
