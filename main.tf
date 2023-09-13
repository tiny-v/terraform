terraform {
  required_providers {
    alicloud = {
      source = "aliyun/alicloud"
      version = "1.209.1"
    }
  }
}

provider "alicloud" {
  region       =   "cn-beijing"
  access_key   =   "ccddde"
  secret_key   =   "aabbc"
}

resource "alicloud_disk" "ecs_disk" {
  zone_id = "cn-beijing-a"
  disk_name              = "mayue-terraform-test"
  description       = "mayue terraform test disk"
  category          = "cloud_efficiency"
  size              = "40"
  tags = {
    Name = "TerraformTest"
  }
}
