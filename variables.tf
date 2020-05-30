variable "prefix" {
  type    = string
  default = "learnaz104"
}

variable "ad_groups" {
  description = "Active Directory Groups"
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
