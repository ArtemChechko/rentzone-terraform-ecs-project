# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "caait-terraform-remote-state-project2"
    key            = "rentzone-ecs/terraform.tfstate"
    region         = "us-east-1"
#    profile        = "default"
    dynamodb_table = "terraform-state-lock-project2"
  }
}