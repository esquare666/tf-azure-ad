provider "azuread" {
  version = "~> 0.7.0"
}

resource "azuread_group" "main" {
  count = length(var.subnet_app)
  name  = var.subnet_app[count.index]
}
