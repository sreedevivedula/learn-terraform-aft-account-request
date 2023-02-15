module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "sreedevi+aft+two@thoughtworks.com"
    AccountName               = "sandbox-aft-two"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "sreedevi+aft+two@thoughtworks.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT Two"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
