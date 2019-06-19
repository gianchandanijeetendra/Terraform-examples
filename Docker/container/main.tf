#Start the container
resource "docker_container" "container_id" {
  name = "${var.name}"
  image = "${docker_image.image_id.latest}"
  ports {
    internal = "${var.int_port}"
    external = "${var.ext_port}"
  }
}
#terraform plan
#terraform apply (you can also make use of auto-approve)
