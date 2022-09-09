# Nexon-Application-CICD
This repository contained complete CICD scripts to deploy Nexon-Marketing Application

## Pre-Requirements
1. Create Self Hosted Runner
 

You can find the all information in the same repository under Settings --- Actions ---- Runner
---- New self-hosted runner, it will give you above command to be execute from your VM. I have installed this on my EC2, where I can run all my CICD related builds and deployments.
<img width="452" alt="image" src="https://user-images.githubusercontent.com/41107404/189351954-9313106c-a56e-4a5f-82f0-17839e938099.png">


https://www.edwardthomson.com/blog/github_actions_26_self_hosted_runners.html

2. Create Secrets

Unser Settings ---- Security ----- Secrets ----- Action ---- New repository secret
https://docs.github.com/en/actions/security-guides/encrypted-secrets
<img width="452" alt="image" src="https://user-images.githubusercontent.com/41107404/189351977-20afb1b0-8ef1-4427-b4db-20a97d94b738.png">

 

## Deployment Process

1. Create a Feature branch ex: feat__test.

2. Add your changes to code and update the version in version.sh file.

3. Commit your changes and create a PR (Pull request to DEV) and it will trigger CI pipeline to build the images and push to ECR with new TAG. 
 
4. After a successful review merge your feature branch to dev, and it will trigger the deployment in DEV environment.

5. Once you confirmed your changes are reflect under  
   1. EC2 --- Loadbalancer --- Description --- DNS Name

6. Create another PR from dev to main, once merge it will trigger the Production deployment.


