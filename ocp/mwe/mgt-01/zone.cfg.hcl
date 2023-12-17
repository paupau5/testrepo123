locals {
  location = "westeurope"
  tags = {
    ClientCode = "OCP"
    ClientName = "Omni Consumer Products"
  }

  # resource group
  rg_name = "mwe-ocp-mgt-01-rg"

  # log analytics workspace
  log_name = "mwe-ocp-mgt-01-log"
}
