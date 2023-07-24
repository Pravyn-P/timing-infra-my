module "acm" {
    source = "terraform-aws-modules/acm/aws"
    version = "~> 4.0"
    domain_name = "*.openlok.world" 
    zone_id = var.zone_id
    subject_alternative_names = [
        "*.openlok.world",
        "api.openlok.world",
        "web.openlok.world",
        "cdn.openlok.world",
    ]
    wait_for_validation = true
    tags = var.tags
}