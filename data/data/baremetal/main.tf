provider "libvirt" {
  uri = "${var.LibvirtURI}"
}

provider "ironic" {
  url          = "${var.IronicURI}"
  microversion = "1.50"
}

module "bootstrap" {
  source = "./bootstrap"

  cluster_id       = "${var.cluster_id}"
  image            = "${var.Image}"
  ignition         = "${var.ignition_bootstrap}"
  baremetal_bridge = "${var.BareMetalBridge}"
  overcloud_bridge = "${var.OverCloudBridge}"
}

module "masters" {
  source = "./masters"

  ignition       = "${var.ignition_master}"
  image_source   = "${var.MasterConfiguration["ImageSource"]}"
  image_checksum = "${var.MasterConfiguration["ImageChecksum"]}"
  root_gb        = "${var.MasterConfiguration["RootGb"]}"
  root_disk      = "${var.MasterConfiguration["RootDisk"]}"

  master_nodes = "${var.MasterNodes}"
  properties = "${var.Properties}"
  root_devices = "${var.RootDevices}"
  driver_infos = "${var.DriverInfos}"
}

