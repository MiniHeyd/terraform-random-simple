terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.1.3"
    }
  }
}

provider "random" {}

resource "random_id" "rando" {
  byte_length = 8
}

variable "image_id" {
  type = string
  description = "The id of the machine image (AMI) to use for the server."
}

variable "docker_ports" {
  type = list(object({
    internal = number
    external = number
    protocol = string
  }))
}