resource "aws_iam_policy" "policy" {
    name = "terraform_ec2-access-by-id"
    path = "/"
    description = "Access EC2 by ID, created by Terraform"

    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "ec2:*",
            "Resource": "*",
            "Condition": {
                "StringEquals": {
                    "ec2:ResourceTag/id": "i-1234567890"
                }
            }
        }
    ]
}
EOF
}