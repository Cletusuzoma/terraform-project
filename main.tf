
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

resource "aws_instance" "myec2" {
  ami           =  "ami-0f34c5ae932e6f0e4"
  instance_type = "t3.micro"


  tags = {
    name = "my-latest-ec2"
  }
}
