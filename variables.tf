variable "prefix" {
  type    = string
  default = "learnaz104"
}

variable "usage_location" {
  type    = string
  default = "NZ"
}

variable "password" {
  type    = string
}

variable "ad_groups" {
  description = "Active Directory Groups"
  type        = list(string)
}

variable "ad_home_group_members" {
  description = "Active Directory Home Group Members"
  type        = list(string)
}

variable "ad_users" {
  description = "Active Directory users"
  type = list(object({
    uid = string
    dname = string
  }))
}

variable "tag_user_name" {
  type = string
  default = "Elayaraja Kathirvel"
}

variable "tag_env" {
  type = string
  default = "training"
}

variable "tag_project" {
  type = string
  default = "AZ-104"
}
