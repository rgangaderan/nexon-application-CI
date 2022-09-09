# nexon-application-CI
This repository contained complete CICD scripts to deploy Nexon-Marketing Application

# Deployment Process

1. Create a Feature branch ex: feat__test

2. Add your changes to code and update the version in version.sh file

3. Commit your changes and create a PR (Pull request to DEV) and it will trigger CI pipeline to build the images and push to ECR with new TAG 
 
4. After a successful review merge your feature branch to dev, and it will trigger the deployment in DEV environment.

5. Once you confirmed your changes are reflect under  
   1. ECS --- Loadbalancer ---

6. Create another PR from dev to main, once merge it will trigger the Production deployment.
