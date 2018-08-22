provider "aws" {
  profile    = "vs-terraform"
  region     = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "tf-sre-pled-com"
    profile    = "vs-terraform"
    key    = "s3/terraform.tfstate"
    region = "us-east-1"
  }
}
