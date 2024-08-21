Project Title:
CI/CD Pipeline for the AKS deployment of the web application using the CI/CD tools and Azure
Cloud.

Project Description:
This project aims to deploy an open-source web application on the Azure cloud platform,
utilizing Terraform for infrastructure setup. It also involves establishing an automated
deployment pipeline with Jenkins to support continuous integration and continuous
deployment (CI/CD). Upon successful deployment, the objective is to monitor the web
application using Azure Monitor and Application Insights.

Project Architecture:
![image](https://github.com/user-attachments/assets/495ce75e-ea23-4166-9888-9ce8aeaf2a41)


Project Approach:
This project aims to implement the following actions on the web application deployment.
 Provisioning infrastructure using Infrastructure as Code (IaC) services
 Leveraging cloud services
 Developing and maintaining an automated CI/CD pipeline
 Performing code quality analysis
 Conducting automated code coverage testing
 Implementing containerization and orchestration
 Managing source code
 Automating deployment processes
 Monitoring systems
 Implementing logging practices
 Documenting procedures and steps

Branching Strategy:
 Development Branch (dev): All new features and changes are merged into the
dev branch. This branch is used for integration and testing in the development
environment.
 Master Branch (master): After thorough testing and approval, changes from the
dev branch are merged into the master branch. The master branch is deployed to
the production environment.

Automated Triggers:
 Dev Branch: Trigger build and deployment to the development environment
whenever there is a new commit to the dev branch.
 Master Branch: Trigger build and deployment to the production environment
whenever there is a new commit to the master branch.

Email Notifications:
 Enable email notifications to inform the team about the status of builds and
deployments. Notifications will be sent after each trigger and deployment,
indicating success or failure.

Tools & Services Used:
● Source Code Management - GitHub Repository
● Cloud Platform – Azure Cloud
● Infrastructure as Code - Terraform
● Container and Orchestration – Docker, ACR, AKS
● CI/CD - Jenkins
● Testing Tool - SonarQube
● Monitoring tools - Azure Monitor, Application Insights
