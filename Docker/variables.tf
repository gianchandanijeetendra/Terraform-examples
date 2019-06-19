#Variable declaration

variable "env" {
  description = "env: dev or pod"
}

variable "image" {
  description = "Image for container"
  type = "map"
  default = {
    dev = "ghost:latest"
    prod = "ghost:alpine"
  }
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
