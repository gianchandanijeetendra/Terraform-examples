#Call the Image module
module "image" {
  source = "./image"
  image = "${var.image}"
}

module "container" {
  source = "./container"
  image = "${module.image.image_out}"
}
