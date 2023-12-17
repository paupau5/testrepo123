# creates log analytics workspace

terraform {
  source = "${get_repo_root()}/_modules/azurerm//log-analytics-workspace"
}

dependency "rg" {
  config_path = "../rg"

  mock_outputs_allowed_terraform_commands = ["init", "validate", "plan"]
  mock_outputs = {
    resource_group_name = "mock-rg"
  }
}

locals {
  zone_vars = read_terragrunt_config(find_in_parent_folders("zone.cfg.hcl"))
}

inputs = {
  name    = local.zone_vars.locals.log_name
  rg_name = dependency.rg.outputs.resource_group_name
}
