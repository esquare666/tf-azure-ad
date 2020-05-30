provider "azuread" {
  version = "~> 0.7.0"
}

resource "azuread_group" "main" {
  count = length(var.ad_groups)
  name  = var.ad_groups[count.index]
}
