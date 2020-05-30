provider "azuread" {
  version = "~> 0.7.0"
}

resource "azuread_user" "main" {
  count = length(var.ad_home_group_users)
  cache_level = 
  user_principal_name = "${var.ad_home_group_users[count.index].uid}@3es.nz"
  display_name = "${var.ad_home_group_users[count.index].dname}"
  #Var is created in env. export TF_VAR_password="wjwgergnerjgnerjkg@fgjner43"
  password            = var.password
  force_password_change = false
  usage_location      = var.usage_location
}
