###############################################################################
### IBM Cloud Provider
###############################################################################

provider "ibm" {
    softlayer_username = "${var.softlayer_username}"
    softlayer_api_key  = "${var.softlayer_api_key}"
}

resource "ibm_storage_file" "ruediger_nfs_manager3" {
    count      = 1
    capacity   = 20
    datacenter = "${var.datacenter}"
    iops       = 10
    type       = "Endurance"
}

###############################################################################
### Variables
###############################################################################

# Softlayer credentials
variable softlayer_username {}
variable softlayer_api_key {}

# Softlayer datacenter to deploy the manager
variable datacenter {
    default = "dal10"
}
