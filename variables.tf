// Copyright (c) 2017, 2019, Oracle and/or its affiliates. All rights reserved.

variable "tenancy_ocid" {}
variable "region" {}
variable "compartment_ocid" {}
variable "ssh_public_key" {}
variable "ssh_private_key" {}

# Defines the number of instances to deploy
variable "NumInstances" {
  default = "1"
}

# Defines the number of volumes to create and attach to each instance
# NOTE: Changing this value after applying it could result in re-attaching existing volumes to different instances.
# This is a result of using 'count' variables to specify the volume and instance IDs for the volume attachment resource.
variable "NumIscsiVolumesPerInstance" {
  default = "0"
}

variable "NumParavirtualizedVolumesPerInstance" {
  default = "0"
}

variable "instance_shape" {
  default = "VM.Standard2.1"
}

variable "instance_image_ocid" {
  type = "map"

  default = {
    // See https://docs.us-phoenix-1.oraclecloud.com/images/
    // Oracle-provided image "Oracle-Linux-7.5-2018.10.16-0"
    eu-frankfurt-1 = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaandary2dpwhw42xgv2d3zsbax2hln4wgcrm2tulo3dg67mwkly6aq"
  }
}

variable "DBSize" {
  default = "50" // size in GBs
}

variable "BootStrapFile" {
  default = "./userdata/bootstrap"
}

variable "tag_namespace_description" {
  default = "Just a test"
}

variable "tag_namespace_name" {
  default = "exampletagns"
}

variable "volume_attachment_device" {
  default = "/dev/oracleoci/oraclevdb"
}
