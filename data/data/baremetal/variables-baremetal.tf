variable "IronicURI" {
  type = "string"
  description = "ironic connection URI"
}

variable "LibvirtURI" {
  type = "string"
  description = "libvirt connection URI"
}

variable "Image" {
  type = "string"
  description = "The URL of the OS disk image"
}

variable "BareMetalBridge" {
  type = "string"
  description = "The name of the baremetal bridge"
}

variable "OverCloudBridge" {
  type = "string"
  description = "The name of the overcloud bridge"
}

variable "MasterConfiguration" {
  type = "map"
  description = "Configuration information for masters such as image location"
}

variable "MasterNodes" {
  type = "map"
  description = "Master bare metal node details"
}

variable "Properties" {
  type = "map"
  description = "Master bare metal properties"
}

variable "RootDevices" {
  type = "map"
  description = "Master root device configurations"
}

variable "DriverInfos" {
  type = "map"
  description = "Master driver infos"
}
