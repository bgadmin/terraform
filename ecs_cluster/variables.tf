# Define variables
variable "ecs_cluster" {
    default = "ecs_cluster"
}

variable "ecs_service" {
    default = "ecs_service"
}

variable "taskdefinition_family" {
    default = "family"
}

variable "az_1" {
    default = "us-west-2a"
}

variable "az_2" {
    default = "us-west-2b"
}

variable "desired_count" {
    default = "3"
}

variable "lb_policy" {
    default = "lb_policy"
}