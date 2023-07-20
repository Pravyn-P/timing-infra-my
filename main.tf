module "vpc" {
    source = "../terraform-modules-my/vpc"
    vpc_cidr = var.vpc_cidr
    tags = var.tags
    azs = var.azs
    public_subnet_cidr = var.public_subnet_cidr
    public_subnet_names = var.public_subnet_names
    public_route_table_name = local.public_route_table_name

    # private subnet
    private_subnet_cidr = var.private_subnet_cidr
    private_subnet_names = var.private_subnet_names
    private_route_table_name = local.private_route_table_name

    # databse subnet
    database_subnet_cidr = var.database_subnet_cidr
    database_subnet_names = var.database_subnet_names
    database_route_table_name = local.database_route_table_name
}




# module "vpc" {
#     source = "../../terraform-modules/vpc"
    
#     # vpc_cidr = local.vpc_cidr
#     public_subnet_cidr = var.public_subnet_cidr
#     private_subnet_cidr = var.private_subnet_cidr
#     database_subnet_cidr = var.database_subnet_cidr
#     public_route_table_cidr = var.public_route_table_cidr
#     private_route_table_cidr = var.private_route_table_cidr
    
#     tags = merge(local.tags, {
#         Name = "timing"
#     })
#     public_subnet_tags = merge(local.tags, {
#         Name = "timing-public"
#     })
#     private_subnet_tags = merge(local.tags, {
#         Name = "timing-private"
#     })
#     database_subnet_tags = merge(local.tags, {
#         Name = "timing-datbase"
#     })
#     igw_tags = merge(local.tags, {
#         Name = "timing"
#     })
#     public_route_table_tags = merge(local.tags, {
#         Name = "timing-public"
#     })
#     private_route_table_tags = merge(local.tags, {
#         Name = "timing-private"
#     })
#     nat_gateway_tags = merge(local.tags, {
#         Name = "timing"
#     })
# }