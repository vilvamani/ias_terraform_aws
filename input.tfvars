region = "us-east-1"
vpc_cidr_range = "10.0.0.0/16"
private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
bastion_traffic_cidr = ["0.0.0.0/0"]
k8s_traffic_cidr = ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16"]