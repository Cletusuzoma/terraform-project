terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
    token = "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"
}

resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"

  visibility = "public"
}