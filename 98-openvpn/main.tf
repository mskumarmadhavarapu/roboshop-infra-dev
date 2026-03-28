resource "aws_instance" "bastion" {
    ami                 = local.ami_id
    instance_type       = "t3.small"
    subnet_id           = local.public_subnet_id
    vpc_security_group_ids = [local.bastion_sg_id]
    user_data = file("bastion.sh")

    root_block_device {
      volume_size = 50
      volume_type = "gp3"
      # EBS volume tags
        tags = merge(
          {
              Name = "${var.project}-${var.environment}-bastion"
          },
        local.common_tags
        )
    }
    
    tags = merge(
        {
            Name = "${var.project}-${var.environment}-bastion"
        },
        local.common_tags,
    )
}