
# provider.tf



# https://registry.terraform.io/providers/integrations/github/latest/docs



terraform {

  required_providers {

    github = {

      source = "integrations/github"

      version = "5.11.0"

    }

  }

}



provider "github" {

  # Configuration options

  token = var.token

}
