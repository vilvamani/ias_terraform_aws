region = "us-east-1"
vpc_cidr_range = "10.100.0.0/16"

worker_subnet_ids = ["subnet-63c52e07", "subnet-037b1b2f", "subnet-7d411b35"]
master_subnet_id  = subnet-aec52eca

bastion_traffic_cidr = ["10.0.0.0/8"]
k8s_traffic_cidr = ["10.0.0.0/8"]
key_name = "magellan"
k8s_ami_id = "ami-0947d2ba12ee1ff75"
min_worker_count = 2
max_worker_count = 3
master_instance_type = "t2.medium"
worker_instance_type = "t2.medium"
hosted_zone = "vilvamani.xyz"
hosted_zone_private = false

addons = [
    "https://raw.githubusercontent.com/scholzj/terraform-aws-kubernetes/master/addons/storage-class.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-kubernetes/master/addons/heapster.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-kubernetes/master/addons/dashboard.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-kubernetes/master/addons/external-dns.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-kubernetes/master/addons/autoscaler.yaml"
]

tags = {
    Application = "AWS-Kubernetes"
}

tags2 = [
    {
      key                 = "Application"
      value               = "AWS-Kubernetes"
      propagate_at_launch = true
    }
]