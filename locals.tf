locals {

  bucket_name    = "ecommerce-${var.environment}-product-assets-arindam-01"
  current_region = data.aws_region.current.name

}