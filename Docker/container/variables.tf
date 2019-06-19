#Variable declaration
variable "image" {
  description = "image to be used by container"
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
