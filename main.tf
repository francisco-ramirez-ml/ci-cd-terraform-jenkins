resource "aws_s3_bucket" "terraform" {
  bucket = "ci-cd-s3-bucket"

  tags = {
    Name = var.name_tag
    Environment = "Dev"
  }
}
