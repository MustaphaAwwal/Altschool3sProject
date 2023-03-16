terraform {
  cloud {
    organization = "awwal"

    workspaces {
      name = "awwal-altschool-poject"
    }
  }

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}


