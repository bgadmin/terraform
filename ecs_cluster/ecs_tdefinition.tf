resource "aws_ecs_task_definition" "ecs_service" {
  family                = "${var.ecs_service}"
  container_definitions = "${file("files/task_definitions.json")}"

  volume {
    name      = "service-storage"
    host_path = "/ecs/service-storage"
  }

  placement_constraints {
    type       = "memberOf"
    expression = "attribute:ecs.availability-zone in [${var.az_1},${var.az_2}]"
  }
}
