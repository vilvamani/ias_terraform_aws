region                  = "us-east-1"
cluster_name            = "training-k8s"

# This is used while lunching k8s cluster on the new vpc
vpc_cidr_range          = "101.0.0.0/16"
private_subnets         = ["101.0.1.0/24", "101.0.2.0/24", "101.0.3.0/24"]
public_subnets          = ["101.0.101.0/24", "101.0.102.0/24", "101.0.103.0/24"]

# This is used while lunching k8s cluster on the existing aws vpc
worker_subnet_ids       = ["subnet-xxxxxxx", "subnet-xxxxxxx", "subnet-xxxxxxx"]
master_subnet_id        = "subnet-xxxxxxx"

k8s_traffic_cidr        = ["10.0.0.0/8"]

key_name                = ""

centos_ami_id           = "ami-0affd4508a5d2481b"
min_worker_count        = 2
max_worker_count        = 6
master_instance_type    = "t2.medium"
worker_instance_type    = "t2.medium"
hosted_zone             = ""
hosted_zone_private     = true

addons = [
    "https://raw.githubusercontent.com/vilvamani/ias_terraform_aws/main/k8s-addions/k8s-dashboard.yaml",
    "https://raw.githubusercontent.com/vilvamani/ias_terraform_aws/main/k8s-addions/k8s-heapster.yaml",
    "https://raw.githubusercontent.com/vilvamani/ias_terraform_aws/main/k8s-addions/k8s-autoscaler.yaml"
]

k8s_master_tags = {
    Application = "AWS-Kubernetes"
}

k8s_node_tags = [
    {
        key                 = "Application"
        value               = "AWS-Kubernetes"
        propagate_at_launch = true
    }
]
