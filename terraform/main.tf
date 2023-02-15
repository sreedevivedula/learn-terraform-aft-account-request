module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "sreedevi+aft+one@thoughtworks.com"
    AccountName               = "sandbox-aft-one"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "sreedevi+aft+one@thoughtworks.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT One"
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
