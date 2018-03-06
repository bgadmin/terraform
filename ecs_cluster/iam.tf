resource "aws_iam_policy" "policy" {
  name        = "${var.lb_policy}"
  path        = "/"
  description = "Load Balancer Policy"
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "ec2:DescribeAddresses",
                "ec2:DescribeInstances",
                "ec2:DescribeSubnets",
                "ec2:DescribeSecurityGroups",
                "ec2:DescribeVpcs",
                "ec2:DescribeInternetGateways",
                "ec2:DescribeAccountAttributes",
                "ec2:DescribeClassicLinkInstances",
                "ec2:DescribeVpcClassicLink",
                "ec2:CreateSecurityGroup",
                "ec2:CreateNetworkInterface",
                "ec2:DeleteNetworkInterface",
                "ec2:ModifyNetworkInterface",
                "ec2:ModifyNetworkInterfaceAttribute",
                "ec2:AuthorizeSecurityGroupIngress",
                "ec2:AssociateAddress",
                "ec2:DisassociateAddress",
                "ec2:AttachNetworkInterface",
                "ec2:DetachNetworkInterface",
                "ec2:AssignPrivateIpAddresses",
                "ec2:AssignIpv6Addresses",
                "ec2:UnassignIpv6Addresses"
            ],
            "Resource": "*"
        }
    ]
}
EOF
}