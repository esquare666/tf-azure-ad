provider "azuread" {
  version = "~> 0.7.0"
}

resource "azuread_user" "main" {
  count = length(var.ad_users)
  user_principal_name = "${var.ad_users[count.index].uid}@3es.nz"
  display_name = var.ad_users[count.index].dname
  #Var is created in env. export TF_VAR_password="wjwgergnerjgnerjkg@fgjner43"
  password            = var.password
  force_password_change = false
  usage_location      = var.usage_location
}

resource "azuread_group" "main" {
  count = length(var.ad_groups)
  name  = var.ad_groups[count.index]
}
