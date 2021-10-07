terraform {
  backend "remote" {
    organization = "study_les12"

    workspaces {
      name = "iac"
    }
  }
}