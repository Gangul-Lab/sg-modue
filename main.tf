# -------- Security Group Module ----------
module "sg" {
  source      = "./modules/security-group"
  sg_name     = "module-sg"
  description = "Allow SSH and HTTP"
  vpc_id      = var.vpc_id

  extra_rules = []
  
  #extra_rules = [
  #  {
  #    description = "Custom App Port"
  #    from_port   = 8080
  #    to_port     = 8080
  #    protocol    = "tcp"
  #    cidr_blocks = ["0.0.0.0/0"]
  #  }
  #]
}

# -------- EC2 Module --------
module "ec2" {
  source           = "./modules/ec2-instance"
  instance_name    = "web-server"
  ami_id           = var.ami_id
  instance_type    = "t3.micro"
  subnet_id        = var.subnet_id
  security_group_id = module.sg.security_group_id
}
