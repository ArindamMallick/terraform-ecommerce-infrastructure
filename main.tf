#terraform block
terraform {
  required_providers {
    aws = {

      source  = "hashicorp/aws"
      version = "~> 6.0"

    }
  }
}

#provider block
provider "aws" {
  region = "ap-south-1"

}

# resource config
resource "aws_s3_bucket" "product_asset" {
  bucket = "ecommerce-dev-product-asset-joy"

}