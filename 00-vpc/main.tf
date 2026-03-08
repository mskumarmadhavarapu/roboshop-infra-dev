module "vpc" {
    source = "git::https://github.com/mskumarmadhavarapu/terraform-aws-vpc.git?ref=main"
    project = var.project
    environment = var.environment
    is_peering_required = true
}