#Variable declaration
variable "image" {
  description = "image to be used by container"
  default = "ghost:latest"
}

variable "name" {
  description = "name of the blog"
  default = "My Blog"
}

variable "int_port" {
  description = "internal port used by ghost"
  default = "2368"
}

variable "ext_port" {
  description = "external port to be used by the application"
  default = "80"
}

#Download the latest ghost image
resource "docker_image" "image_id" {
  name = "${var.image}"
}
#use "terraform show" to view the details of the image

#Start the container
resource "docker_container" "container_id" {
  name = "${var.name}"
  image = "${docker_image.image_id.latest}"
  ports {
    internal = "${var.int_port}"
    external = "${var.ext_port}"
  }
}

#Output container name and IP address. The attributes can be found with "terraform show" command
Output "IP address" {
  value = "${docker_container.container_id.ip_address}"
}

Output "container_name" {
  value = "${docker_container.container_id.name}"
}

#terraform plan
#terraform apply (you can also make use of auto-approve)
