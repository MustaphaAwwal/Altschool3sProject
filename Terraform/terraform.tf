terraform {
  cloud {
    organization = "awwal"

    workspaces {
      name = "awwal-altschool-project"
    }
  }

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}
