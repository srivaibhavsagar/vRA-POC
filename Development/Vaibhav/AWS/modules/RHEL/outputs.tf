output "AWS-VM-ID" {
value = aws_instance.vm[*].id
}