include "root" {
  path = "${get_repo_root()}/_templates/config/root.hcl"
}

include "provider_azurerm" {
  path = "${get_repo_root()}/_templates/config/provider/azurerm-zone.hcl"
}

include "resource" {
  path = "${get_repo_root()}/_templates/log-analytics.hcl"
}
