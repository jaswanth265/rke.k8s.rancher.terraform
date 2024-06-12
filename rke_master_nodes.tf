#RKE Master Servers
resource "aws_instance" "master-1" {
  ami                         = "ami-0261755bbcb8c4a84"
  availability_zone           = "us-east-1a"
  instance_type               = "t3.medium"
  key_name                    = "LaptopKey"
  subnet_id                   = aws_subnet.subnet1-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name = "master01"
  }
  user_data = <<-EOF
		#!/bin/bash
        sudo curl https://get.docker.com | bash
        sudo usermod -a -G docker ubuntu
        sudo usermod -a -G root ubuntu
        sudo systemctl daemon-reload
        sudo systemctl restart docker
        sudo reboot
    EOF
  root_block_device {
    volume_size           = "15"
    volume_type           = "gp2"
    delete_on_termination = true
  }
}

resource "aws_instance" "master-2" {
  ami                         = "ami-0261755bbcb8c4a84"
  availability_zone           = "us-east-1b"
  instance_type               = "t3.medium"
  key_name                    = "LaptopKey"
  subnet_id                   = aws_subnet.subnet2-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name = "master02"
  }
  user_data = <<-EOF
		#!/bin/bash
        sudo curl https://get.docker.com | bash
        sudo usermod -a -G docker ubuntu
        sudo usermod -a -G root ubuntu
        sudo systemctl daemon-reload
        sudo systemctl restart docker
        sudo reboot
    EOF
  root_block_device {
    volume_size           = "15"
    volume_type           = "gp2"
    delete_on_termination = true
  }
}

resource "aws_instance" "master-3" {
  ami                         = "ami-0261755bbcb8c4a84"
  availability_zone           = "us-east-1c"
  instance_type               = "t3.medium"
  key_name                    = "LaptopKey"
  subnet_id                   = aws_subnet.subnet3-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name = "master03"
  }
  user_data = <<-EOF
		#!/bin/bash
        sudo curl https://get.docker.com | bash
        sudo usermod -a -G docker ubuntu
        sudo usermod -a -G root ubuntu
        sudo systemctl daemon-reload
        sudo systemctl restart docker
        sudo reboot
    EOF
  root_block_device {
    volume_size           = "15"
    volume_type           = "gp2"
    delete_on_termination = true
  }
}

#Load Balancer For Master Server Management
resource "aws_lb" "test" {
  name               = "rke-nlb"
  internal           = false
  load_balancer_type = "network"
  subnets = [
    aws_subnet.subnet1-public.id,
    aws_subnet.subnet2-public.id,
    aws_subnet.subnet3-public.id
  ]
  enable_deletion_protection = false
}

resource "aws_lb_target_group" "test" {
  name     = "rke-tg"
  port     = 6443
  protocol = "TCP"
  vpc_id   = aws_vpc.default.id
}

resource "aws_lb_target_group_attachment" "master01" {
  target_group_arn = aws_lb_target_group.test.arn
  target_id        = aws_instance.master-1.id
  port             = 6443
}

resource "aws_lb_target_group_attachment" "master02" {
  target_group_arn = aws_lb_target_group.test.arn
  target_id        = aws_instance.master-2.id
  port             = 6443
}

resource "aws_lb_target_group_attachment" "master03" {
  target_group_arn = aws_lb_target_group.test.arn
  target_id        = aws_instance.master-3.id
  port             = 6443
}

resource "aws_lb_listener" "front_end_http" {
  load_balancer_arn = aws_lb.test.arn
  port              = "6443"
  protocol          = "TCP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.test.arn
  }
}

