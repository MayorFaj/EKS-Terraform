# //  Set source_node_security_group = true inside rules to set the node_security_group as source
#   cluster_security_group_name = "${local.cluster_name}-cluster"
#   cluster_security_group_additional_rules = {

#     ingress_nodes_ephemeral_ports_tcp = {
#       description                = "Nodes on ephemeral ports"
#       protocol                   = "tcp"
#       from_port                  = 1025
#       to_port                    = 65535
#       type                       = "ingress"
#       source_node_security_group = true
#     }

#     ingress_source_security_group_id = {
#       description              = "Ingress from another computed security group for port 22"
#       protocol                 = "tcp"
#       from_port                = 22
#       to_port                  = 22
#       type                     = "ingress"
#       source_security_group_id = aws_security_group.additional.id
#     }

#     ingress_source_security_group_id = {
#       description              = "Ingress from another computed security group for port 443"
#       protocol                 = "tcp"
#       from_port                = 443
#       to_port                  = 443
#       type                     = "ingress"
#       source_security_group_id = aws_security_group.additional.id
#     }

#     ingress_source_security_group_id = {
#       description              = "Allows inbound NFS traffic from another computed security group"
#       protocol                 = "tcp"
#       from_port                = 2049
#       to_port                  = 2049
#       type                     = "ingress"
#       source_security_group_id = aws_security_group.additional.id
#     }

#   }
#   cluster_security_group_tags = {
#     Name = "${local.cluster_name}-cluster"
#   }

#   node_security_group_name = "${local.cluster_name}-node"
#   // Extend node-to-node security group rules
#   node_security_group_additional_rules = {

#     ingress_self_all = {
#       description = "Node to node all ports/protocols"
#       protocol    = "-1"
#       from_port   = 0
#       to_port     = 0
#       type        = "ingress"
#       self        = true
#     }

#     ingress_source_security_group_id = {
#       description              = "Ingress from another computed security group"
#       protocol                 = "tcp"
#       from_port                = 22
#       to_port                  = 22
#       type                     = "ingress"
#       source_security_group_id = aws_security_group.additional.id
#     }

#     ingress_source_security_group_id = {
#       description              = "Ingress from another computed security group two"
#       protocol                 = "tcp"
#       from_port                = 443
#       to_port                  = 443
#       type                     = "ingress"
#       source_security_group_id = aws_security_group.additional.id
#     }

#     ingress_source_security_group_id = {
#       description              = "Allows inbound NFS traffic"
#       protocol                 = "tcp"
#       from_port                = 2049
#       to_port                  = 2049
#       type                     = "ingress"
#       source_security_group_id = aws_security_group.additional.id
#     }

#     egress_all = {
#       description = "Node all egress"
#       protocol    = "-1"
#       from_port   = 0
#       to_port     = 0
#       type        = "egress"
#       cidr_blocks = [local.all_cidr]
#     }
#   }

#   node_security_group_tags = {
#     Name                                          = "${local.cluster_name}-node"
#     "kubernetes.io/cluster/${local.cluster_name}" = null
#   }
