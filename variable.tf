variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "tags" {
    type = map
    default = {
        Name = "timing"
        Environment = "DEV"
        Terraform = "true" 
    }
}

variable "azs" {
    default = ["ap-south-1a","ap-south-1b"]
}

variable "public_subnet_cidr" {
    default = ["10.0.1.0/24","10.0.2.0/24"]
}

variable "public_subnet_names" {
    default = ["timing-public-1a","timing-public-1b"]
}

variable "private_subnet_cidr" {
    default = ["10.0.11.0/24","10.0.12.0/24"]
}

variable "private_subnet_names" {
    default = ["timing-private-1a","timing-private-1b"]
}

variable "database_subnet_cidr" {
    default = ["10.0.21.0/24","10.0.22.0/24"]
}

variable "database_subnet_names" {
    default = ["timing-database-1a","timing-databse-1b"]
}

variable "rds_security_group_name" {
    default = "timing"
}

variable "rds_security_group_description" {
    default = "This security group is to attach to timing RDS"
}

variable "ingress_cidr" {
    default = []
}

variable "allocated_storage" {
  default = "10"
}

variable "db_name" {
  default = "timing"
}

variable "identifier" {
  default = "timing"
}

variable "engine" {
  default = "postgres"
}

variable "engine_version" {
  default = "14.7-R1"
}

variable "rds_username" {
  default = "timingadmin"
}

# variable "secret_name" {
#   default = "timing/rds/password-value"
# }

variable "instance_type" {
  default = "db.t4g.micro"
}

variable "rds_secret_arn" {
  default = "arn:aws:secretsmanager:ap-south-1:617480992998:secret:timing/rds-password-secret-TrBM6W"
}

variable "ecs_cluster_name" {
  default = "timing"
}

variable "ecs_log_group_name" {
  default = "timing/ecs_cluster"
}

variable "app_alb_security_group_name" {
  default = "timing-alb"
}

variable "app_alb_security_group_description" {
  default = "This is used for application ALB"
}

variable "app_alb_ingress_cidr" {
  default = [
    # {
    #   from_port = "80"
    #   to_port = "80"
    #   cidr_block = "0.0.0.0/0"
    #   description = "opening 80 to internet"
    # },
    {
      from_port = "443"
      to_port = "443"
      cidr_block = "0.0.0.0/0"
      description = "opening 443 to internet"
    }
  ]
}

variable "app_alb_name" {
  default = "timing-app"
}

variable "app_alb_tags" {
  default = {}
}

variable "zone_name" {
  default = "openlok.world"
}

variable "api_alb_record_name" {
  default = "api"
}

variable "zone_id" {
  default = "Z01657161AFXNM8MY536F"
}


# variable "public_subnet_cidr" {
#     default = ["10.0.1.0/24","10.0.2.0/24"]
# }

# variable "private_subnet_cidr" {
#     default = ["10.0.11.0/24","10.0.12.0/24"]
# }

# variable "database_subnet_cidr" {
#     default = ["10.0.21.0/24","10.0.22.0/24"]
# }

# variable "public_route_table_cidr" {
#     default = "0.0.0.0/0"
# }

# variable "private_route_table_cidr" {
#     default = "0.0.0.0/0"
# }