variable "repository" {
  type = object({
    name           = string
    default_branch = string
  })
}

variable "file" {}

variable "content" {}

variable "branch" {
  default = ""
}

variable "commit_message" {
  default = null
}

variable "commit_author" {
  default = "terraform"
}

variable "commit_email" {
  default = null
}

variable "overwrite_on_create" {
  default = true
}
