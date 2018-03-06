# Create ecs cluster
# Use ecs_cluster variable to name the cluster
resource "aws_ecs_cluster" "ecs_cluster" {
  name = "${var.ecs_cluster}"
}
