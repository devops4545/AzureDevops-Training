Certainly! Here’s how you can use existing Azure DevOps tasks to deploy Kubernetes YAML files to Azure Kubernetes Service (AKS) without creating additional scripts. This README will guide you through setting up an Azure DevOps pipeline that utilizes built-in tasks to deploy your Kubernetes resources.

---

# 🚀 Deploy Kubernetes YAML Files in AKS Using Azure DevOps Pipeline

Welcome! 🎉 This guide will help you deploy Kubernetes YAML files to Azure Kubernetes Service (AKS) using built-in Azure DevOps tasks in a pipeline. No additional scripts are needed; we'll leverage Azure DevOps tasks for the deployment process.

## 🛠️ Prerequisites

1. **Azure DevOps Account**: Ensure you have an Azure DevOps account. You can sign up at [Azure DevOps](https://dev.azure.com/).
2. **Azure Subscription**: Make sure you have an Azure subscription and AKS cluster set up. You can create an AKS cluster through the [Azure Portal](https://portal.azure.com/) or using the Azure CLI.
3. **Kubernetes YAML Files**: Have your Kubernetes YAML configuration files ready in your repository.

## 📦 Steps to Deploy Kubernetes YAML Files in AKS

### 1. Prepare Your Kubernetes YAML Files

1. **Add Kubernetes Configuration Files to Your Repository**:
   - Ensure your Kubernetes YAML files (e.g., `deployment.yaml`, `service.yaml`, etc.) are in a directory in your repository, such as `kubernetes/`.

### 2. Set Up Azure DevOps Pipeline

1. **Create a New Pipeline**:
   - Go to your Azure DevOps project.
   - Navigate to **Pipelines** > **Create Pipeline**.
   - Select the repository where your Kubernetes YAML files are stored.

2. **Choose Pipeline Configuration**:
   - Select "YAML" when prompted to configure the pipeline.

3. **Create the Pipeline YAML File**:
   - Create a file named `azure-pipelines.yml` in the root of your repository with the following content:

     ```yaml
     trigger:
       branches:
         include:
           - main

     variables:
       azureSubscription: 'YOUR_AZURE_SUBSCRIPTION_NAME'
       aksCluster: 'YOUR_AKS_CLUSTER_NAME'
       resourceGroup: 'YOUR_RESOURCE_GROUP_NAME'
       kubernetesNamespace: 'default'

     stages:
     - stage: Deploy
       jobs:
       - job: DeployToAKS
         pool:
           vmImage: 'ubuntu-latest'
         steps:
         - task: AzureCLI@2
           inputs:
             azureSubscription: $(azureSubscription)
             scriptType: 'bash'
             scriptPath: '$(Build.SourcesDirectory)/kubernetes/deploy.sh'
             arguments: '-g $(resourceGroup) -c $(aksCluster) -n $(kubernetesNamespace)'

         - task: Kubernetes@1
           inputs:
             azureSubscription: $(azureSubscription)
             azureResourceGroup: $(resourceGroup)
             kubernetesCluster: $(aksCluster)
             namespace: $(kubernetesNamespace)
             command: 'apply'
             arguments: '-f $(Build.SourcesDirectory)/kubernetes/'
     ```

   - **Explanation**:
     - **Trigger**: Defines the branch that triggers the pipeline.
     - **Variables**: Replace placeholder values with your Azure subscription name, AKS cluster name, resource group name, and Kubernetes namespace.
     - **Stages and Jobs**: 
       - **AzureCLI@2**: Used to get AKS credentials. If not needed, you can remove this task.
       - **Kubernetes@1**: Applies Kubernetes YAML files to the AKS cluster.

### 3. Configure Pipeline Permissions

1. **Set Up Service Connection**:
   - Go to **Project Settings** > **Service connections**.
   - Add a new service connection for Azure Resource Manager (ARM) if not already set up.
   - Provide the necessary permissions to allow Azure DevOps to interact with your AKS cluster.

2. **Grant Access to AKS Cluster**:
   - Ensure that the Azure DevOps service principal or managed identity has the necessary permissions to deploy resources to your AKS cluster.

### 4. Run the Pipeline

1. **Run the Pipeline**:
   - Commit your changes to the repository.
   - Go to **Pipelines** in Azure DevOps and select your pipeline.
   - Click on **Run Pipeline** to start the deployment.

2. **Monitor the Pipeline**:
   - Monitor the pipeline execution in Azure DevOps to ensure that the deployment steps complete successfully.

## 📝 Additional Resources

- [Azure DevOps Pipelines Documentation](https://docs.microsoft.com/en-us/azure/devops/pipelines/?view=azure-devops)
- [Azure Kubernetes Service (AKS) Documentation](https://docs.microsoft.com/en-us/azure/aks/)
- [Kubernetes Documentation](https://kubernetes.io/docs/home/)

## 🤝 Need Help?

If you encounter issues or have questions, consult the [Azure DevOps support resources](https://learn.microsoft.com/en-us/azure/devops/support/support?view=azure-devops) or reach out to the community forums.

Happy deploying to AKS! 🚀🛠️

---
