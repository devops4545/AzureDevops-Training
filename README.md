# AzureDevOpsTraining

## Syllabus

### Section 1

- DevOps Intoruduction
- Devops Tools
- Different practices of Devops - Agile, Scrum etc.
- Azure devops URL walkthourgh , user creation
- Azure Boards overview
- Work item types  - different use case scenario
- Queries in work items
  
  > **Task 1:** Create a agile Project , write a query to retrieve bugs
  
  > **Task 2:** integrate github with Azure boards, fix an issue from commit
  
- Integrate a repository with Azure Boards
- Integrate Azure Pipelines and GitHub Actions with work item tracking tools
- Identify appropriate metrics related to flow of work, such as cycle times, time to recovery, and lead time
- Document a project by using tools, such as wikis and process diagrams
- Custom dashboards in Azure Boards

    
  > **Task 3:** Configure dashboard and add all chart type

  > **Task 4:** Assign work items in sprint and capacity planning

### Section 2

- Azure repos overview , git basics
- Branching strategies for the source code - feature, relaese, trunk . 
- Pull request workflow by using branch policies and branch protections
  > **Task 5:** Create a repo in azure Repos and push code
  
  > **Task 6:** Create a new develop branch from master

  > **Task 7:** Create and resolve conflicts in branches (learn)

- Different merging strategies in Azure Repos
- Branch merging restrictions by using branch policies and branch protections
- Configure permissions in the source control repository
  > **Task 8:** Merge a branch using squash merge with PR

  > **Task 9:** Merge a branch using rebase with some commits ahead
  
  > **Task 10:** Create branch policies for main branches
  
  > **Task 11:** Build validation , status checks
  
  > **Task 12:** Add reviewers in PR , link work items at all stages  commit, pr , merge
  
  > **Task 13:** Lock a branch 

### Section 3

- Azure Pipelines overview
- Configure agents in pipelines, Microsoft-hosted , Self-hosted .
- Classic pipeline creation for application Build
- Yaml based pipeline creation for application Build
- Integrate pipelines with external tools, including dependency scanning, security scanning, and code coverage
- Implement quality and release gates, including security and governance
- Integration of automated tests into pipelines
- Azure Pipeline Environments , Deployment groups
- Container based job configuration in pipeline
- Deployment jobs in Azure pipelines, Runonce, Rolling, canary strategies
- Azure Pipeline advanced configuration  - branch filter , scheduled builds 
- Reduce build time in azure pipelines
- Configure permissions for users in Pipelines, Service Connections.
- Azure pipelines troubleshooting with debug
- Reusable pipeline elements, including YAML templates, task groups, variables, and variable groups
- Monitor pipeline health, including failure rate, duration, and flaky tests
- Build and release pipelines in Github Actions
- Secret management in Pipelines and github actions

  > **Task 14:** Create CI pipeline for favourite programming language - Microsoft Hosted
  
  > **Task 15:** Use self hosted for same CI pipeline
  
  > **Task 16:** Create multiple agents from single VM
  
  > **Task 17:** For CI , use YAML and Classic pipelines
  
  > **Task 17:**  Integrate SonarQube , MendBolt
  
  > **Task 18:**  Deploy app to Azure WebApp
  
  > **Task 19:** Include secrets in pipelines using key vault
  
  > **Task 20:** Implement CI/CD pipeline for app using Github Actions include Code scanning

### Section 4

- Azure Artifacts overview
- package management implementation that uses Azure Artifacts, GitHub Packages, NuGet, and npm
- Implement a versioning strategy for pipeline artifacts
- Azure Testplans overview - manual testing addon example
- Infrastructure as a code overview
- ARM, BICEP , TERRAFORM introduction
- IaC strategy, including source control and automation of testing and deployment
- Automate security and compliance scanning 
- Automate analysis of source code by using GitHub code scanning, GitHub secrets scanning, pipeline-based scans, and SonarQube
- Automate analysis of licensing, vulnerabilities, and versioning of open-source components by using Mend Bolt and GitHub Dependency Scanning

  > **Task 21:** Create ARM deployment stage with ADO pipeline
  
  > **Task 22:** Create resources using terraform with ADO pipeline
  
  > **Task 23:** Include security scanning for Resources using Code
  
  > **Task 24:** DependaBot, security Enablement in Github Repos

### Section 5

- Docker introduction , VM vs Containers
- Creation of docker images : core build block
- Manage data and working with volumes in Docker
- Container network communication basics
- Kubernetes introduction
- Kubernetes pods, replicaset, deployments, services creation using imperative and declarative way
- Integration of Azure kubernetes with Azure files, storage disks for persistent storage
- Kubernetes cordon, taints, node affinity , corndon etc.
- Kubernetes ingress basics
- Working with ChatGPT for code creation for dockerfile, Kubernetes yaml files

  > **Task 25:** Installation of Docker, Minikube , Docker Kubernetes extension
  
  > **Task 26:** Create docker image using DockerFile
  
  > **Task 27:** Store container data in volumes
  
  > **Task 28:** Create docker image using DockerFile
  
  > **Task 29:** Deploy kubernetes yaml files in minikube and AKS
  
  > **Task 30:** Expose application to access outside
