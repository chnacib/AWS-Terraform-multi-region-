
terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "org_name"

    workspaces {
      name = "aws-chnacib"
    }
  }
}

