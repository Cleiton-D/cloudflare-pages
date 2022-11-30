terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}

variable "cloudflare_api_token" {
  description = "The cloudflare API TOKEN"
  type        = string
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}


resource "cloudflare_pages_project" "basic_project" {
  account_id = "a134f5c96e90e0c3fec81a95dc00725e"
  name       = "terraform-teste"
  production_branch = "main"
}

resource "cloudflare_pages_domain" "cleitonkiper_domain" {
  account_id   = "a134f5c96e90e0c3fec81a95dc00725e"
  project_name = "terraform-teste"
  domain       = "terraform.cleitonkiper.com.br"
}