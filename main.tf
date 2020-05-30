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

data "azuread_group" "home" {
  name = "home"
}

data "azuread_group" "primaryschool" {
  name = "primaryschool"
}

data "azuread_group" "kindy" {
  name = "kindy"
}

resource "azuread_group_member" "home" {
  count = length(var.ad_home_group_members)
  group_object_id   = data.azuread_group.home.id
  member_object_id  = "azuread_user.main.${var.ad_home_group_members[count.index]}.id"
}

resource "azuread_group_member" "primaryschool" {
  count = length(var.ad_primaryschool_group_members)
  group_object_id   = data.azuread_group.primaryschool.id
  member_object_id  = "azuread_user.main.${var.ad_primaryschool_group_members[count.index]}.id"
}

resource "azuread_group_member" "kindy" {
  count = length(var.ad_kindy_group_members)
  group_object_id   = data.azuread_group.kindy.id
  member_object_id  = "azuread_user.main.${var.ad_kindy_group_members[count.index]}.id"
}
