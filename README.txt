This repository implements the lessons from https://www.udemy.com/aws-masterclass-docker-containers-in-the-cloud-with-aws-ecs

ContainersBase.yaml: Launches VPC, Subnets, Security Groups and IAM entities. Most other stacks depend on this one.

ECR.yaml: Creates an ECR repository called ecr-repository

ECSDemoBuilder.yaml: Creates an EC2 machine that acts as a container instance, it also dowloads a test application from git, builds an image from it, runs a container from the image, and pushes the container into the ecr-repository ECR repository. Depends on NetworkAndSecurity.yaml and ECR.yaml

ECSCluster.yaml: Creates an ECS Cluster called ecs-cluster

EC2ContainerInstance.yaml: It creates an EC2 Container Instance that logs on to the ECR Repository and launches into the ECS Cluster. Depends on NetworkAndSecurity.yaml, ECR.yaml and ECSCluster.yaml

ECSClusterAutoScaling.yaml: Creates an autoscaling ECS Cluster

AutoScalingAlarms.yaml: ToDo: Create the triggers for scaling up and down the autoscaling ECS Cluster





