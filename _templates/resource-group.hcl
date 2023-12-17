# creates resouce group

terraform {
  source = "${get_repo_root()}/_modules/azurerm//resource-group"
}

locals {
  zone_vars = read_terragrunt_config(find_in_parent_folders("zone.cfg.hcl"))
}

inputs = {
  name = local.zone_vars.locals.rg_name
}
