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
  region = var.aws_region

}

# resource config
resource "aws_s3_bucket" "product_asset" {
  bucket = "${var.project_name}-${var.environment}-product-assets-arindam"

  tags = {

    Environment = var.environment
    purpose     = "product assets"
  }
}