provider "github" {
  individual = true
}

variable "gpg_key_path" {
  type = string
}

resource "github_user_gpg_key" "gpg_key" {
  armored_public_key = file(var.gpg_key_path)
}