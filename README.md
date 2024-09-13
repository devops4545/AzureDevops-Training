# AzureDevOpsTraining

## Syllabus

### Section 1 🚀

- 🌟 DevOps Introduction
- 🛠️ DevOps Tools
- 🔄 Different practices of DevOps - Agile, Scrum, etc.
- 🌐 Azure DevOps URL walkthrough, user creation
- 📋 Azure Boards overview
- 🔍 Work item types - different use case scenarios
- 📝 Queries in work items

  > **Task 1:** 🐞 Create an Agile Project, write a query to retrieve bugs
  
  > **Task 2:** 🔄 Integrate GitHub with Azure Boards, fix an issue from commit

- 🔗 Integrate a repository with Azure Boards
- 🛠️ Integrate Azure Pipelines and GitHub Actions with work item tracking tools
- ⏱️ Identify appropriate metrics related to the flow of work, such as cycle times, time to recovery, and lead time
- 📚 Document a project using tools such as wikis and process diagrams
- 📊 Custom dashboards in Azure Boards

  > **Task 3:** 📈 Configure dashboard and add all chart types

  > **Task 4:** 📅 Assign work items in sprint and capacity planning

### Section 2 🧑‍💻

- 📂 Azure Repos overview, Git basics
- 🌿 Branching strategies for the source code - feature, release, trunk
- 🔄 Pull request workflow by using branch policies and branch protections
  
  > **Task 5:** ⬆️ Create a repo in Azure Repos and push code
  
  > **Task 6:** 🌲 Create a new develop branch from master

  > **Task 7:** ⚔️ Create and resolve conflicts in branches (learn)

- 🔄 Different merging strategies in Azure Repos
- 🚫 Branch merging restrictions by using branch policies and branch protections
- 🔐 Configure permissions in the source control repository
  
  > **Task 8:** 🔄 Merge a branch using squash merge with PR

  > **Task 9:** 🔄 Merge a branch using rebase with some commits ahead

  > **Task 10:** 📜 Create branch policies for main branches

  > **Task 11:** ✔️ Build validation, status checks

  > **Task 12:** 🔗 Add reviewers in PR, link work items at all stages (commit, PR, merge)

  > **Task 13:** 🔒 Lock a branch

### Section 3 🛠️

- 📊 Azure Pipelines overview
- 🖥️ Configure agents in pipelines, Microsoft-hosted, Self-hosted
- 🏗️ Classic pipeline creation for application build
- 📄 YAML based pipeline creation for application build
- 🔍 Integrate pipelines with external tools, including dependency scanning, security scanning, and code coverage
- 🚪 Implement quality and release gates, including security and governance
- 🔬 Integration of automated tests into pipelines
- 🌍 Azure Pipeline Environments, Deployment groups
- 🐳 Container-based job configuration in pipeline
- 🚀 Deployment jobs in Azure Pipelines: Runonce, Rolling, Canary strategies
- ⏳ Azure Pipeline advanced configuration - branch filter, scheduled builds
- ⏱️ Reduce build time in Azure Pipelines
- 🔑 Configure permissions for users in Pipelines, Service Connections
- 🐞 Azure Pipelines troubleshooting with debug
- ♻️ Reusable pipeline elements, including YAML templates, task groups, variables, and variable groups
- 📈 Monitor pipeline health, including failure rate, duration, and flaky tests
- 🚀 Build and release pipelines in GitHub Actions
- 🔒 Secret management in Pipelines and GitHub Actions

  > **Task 14:** 🖥️ Create CI pipeline for favorite programming language - Microsoft Hosted
  
  > **Task 15:** 🖥️ Use self-hosted for the same CI pipeline

  > **Task 16:** 🖥️ Create multiple agents from a single VM

  > **Task 17:** 📝 For CI, use YAML and Classic pipelines

  > **Task 18:** 🌐 Deploy app to Azure WebApp

  > **Task 19:** 🔐 Include secrets in pipelines using Key Vault

  > **Task 20:** 🔍 Implement CI/CD pipeline for app using GitHub Actions including Code scanning

### Section 4 🔧

- 📦 Azure Artifacts overview
- 🛠️ Package management implementation that uses Azure Artifacts, GitHub Packages, NuGet, and npm
- 🔄 Implement a versioning strategy for pipeline artifacts
- 🧪 Azure Test Plans overview - manual testing addon example
- 🏗️ Infrastructure as Code overview
- 📜 ARM, BICEP, TERRAFORM introduction
- 🔧 IaC strategy, including source control and automation of testing and deployment
- 🔍 Automate security and compliance scanning
- 🛡️ Automate analysis of source code by using GitHub code scanning, GitHub secrets scanning, pipeline-based scans, and SonarQube
- 📦 Automate analysis of licensing, vulnerabilities, and versioning of open-source components by using Mend Bolt and GitHub Dependency Scanning

  > **Task 21:** 🏗️ Create ARM deployment stage with ADO pipeline

  > **Task 22:** 🌍 Create resources using Terraform with ADO pipeline

  > **Task 23:** 🔍 Include security scanning for resources using Code

  > **Task 24:** 🛡️ Dependabot, security enablement in GitHub Repos

### Section 5 🐳

- 🆚 Docker introduction, VM vs Containers
- 🏗️ Creation of Docker images: core build block
- 📦 Manage data and working with volumes in Docker
- 🌐 Container network communication basics
- 🐙 Kubernetes introduction
- ⚙️ Kubernetes pods, ReplicaSet, deployments, services creation using imperative and declarative ways
- 🔗 Integration of Azure Kubernetes with Azure files, storage disks for persistent storage
- 🛠️ Kubernetes cordon, taints, node affinity, cordon, etc.
- 🚪 Kubernetes ingress basics
- 🤖 Working with ChatGPT for code creation for Dockerfile, Kubernetes YAML files

  > **Task 25:** 🛠️ Installation of Docker, Minikube, Docker Kubernetes extension

  > **Task 26:** 📦 Create Docker image using Dockerfile

  > **Task 27:** 💾 Store container data in volumes

  > **Task 28:** 📦 Create multi stage Docker image using Dockerfile

  > **Task 29:** 🚀 Deploy Kubernetes YAML files in Minikube and AKS

  > **Task 30:** 🌍 Expose application to access outside using nginx ingress.

## Repo Activity 📊

![Alt](https://repobeats.axiom.co/api/embed/39b589c55e4e2848c37e3487a130be4ef290ae13.svg "Repobeats analytics image")

## Copyright & License by VVHIT 📜
