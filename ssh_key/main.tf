provider "github" {
  individual = true
}

variable "ssh_key_title" {
  type = string
}

variable "ssh_key_file_path" {
  type = string
}

resource "github_user_ssh_key" "ssh_key" {
  title = var.ssh_key_title
  key = file(var.ssh_key_file_path)
}