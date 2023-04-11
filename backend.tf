terraform {
  backend "s3" {
    bucket = "terraformsaregudem"
    key    = "do-not-delete/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "dynamodb-terraform-table-lock"
  }
}
