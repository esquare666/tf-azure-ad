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
  default     = ["home", "primaryschool", "kindy"]
}

variable "ad_home_group_users" {
  description = "Active Directory Home Group"
  type        = list(string)
  default     = ["home", "primaryschool", "kindy"]
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
