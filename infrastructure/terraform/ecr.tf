resource "aws_ecr_repository" "namegen" {
  name                 = "namegen-app"
  image_tag_mutability = "MUTABLE"
  force_delete         = true
  image_scanning_configuration {
    scan_on_push = true
  }
}