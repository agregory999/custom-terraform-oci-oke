module "oke" {
  source  = "oracle-terraform-modules/oke/oci"
  version = "4.2.4"
  # insert the 9 required variables here
  compartment_id                        =   var.compartment_id
  tenancy_id                            =   var.tenancy_ocid

  ssh_private_key_path                  =   var.private_key
  ssh_public_key_path                   =   var.ssh_public_key_path

  label_prefix                          =   var.label_prefix
  home_region                           =   var.home_region
  region                                =   var.region

  vcn_dns_label                         =   var.vcn_dns_label
  vcn_name                              =   var.vcn_name

  create_bastion_host                   =   var.create_bastion_host

  create_operator                       =   var.create_operator

  # add additional parameters for availability_domains, oke etc as you need

  providers = {
    oci.home = oci.home
  }
}

