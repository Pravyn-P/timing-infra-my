# locals {
#     tags = {
#         Environment = "DEV"
#         Terraform = "true"
#     }
# }

locals {
    # timing-public, this is equal to project name - public
    public_route_table_name = format("%s-%s", lookup(var.tags, "Name"), "public")
    private_route_table_name = format("%s-%s", lookup(var.tags, "Name"), "Private")
    database_route_table_name = format("%s-%s", lookup(var.tags, "Name"), "database")
}