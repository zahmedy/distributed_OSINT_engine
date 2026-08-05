resource "aws_subnet" "private" {
  vpc_id     = data.terraform_remote_state.vpc.outputs.vpc_id
  cidr_block = "10.0.0.0/19"

  tags = {
    "Name" = "dev-private"
  }
}

data "terraform_remote_state" "vpc" {
  backend = "local"
  config = {
    path = "../vpc/terraform.tfstate"
  }
}
