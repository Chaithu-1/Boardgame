output "vpc_id" {
  description = "The ID of the created VPC."
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets."
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "IDs of the private subnets."
  value       = aws_subnet.private[*].id
}

output "public_route_table_id" {
  description = "Public route table ID."
  value       = aws_route_table.public.id
}

output "private_route_table_ids" {
  description = "Private route table IDs."
  value       = aws_route_table.private[*].id
}

output "nat_gateway_ids" {
  description = "NAT Gateway IDs created for outbound private subnet access."
  value       = aws_nat_gateway.main[*].id
}

output "app_security_group_id" {
  description = "App security group ID."
  value       = aws_security_group.app.id
}

output "bastion_security_group_id" {
  description = "Bastion security group ID."
  value       = aws_security_group.bastion.id
}

output "app_instance_id" {
  description = "The EC2 instance ID for the application server."
  value       = aws_instance.app.id
}

output "app_instance_public_ip" {
  description = "The public IP address of the application EC2 instance."
  value       = aws_instance.app.public_ip
}
