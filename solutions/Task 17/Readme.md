Certainly! Here’s a README file with instructions for setting up Continuous Integration (CI) pipelines in Azure DevOps using both YAML and Classic pipelines. This guide will help you configure CI for your project with both methods.

---

# 🚀 CI Pipeline Setup in Azure DevOps: YAML and Classic

Welcome! 🎉 This guide will walk you through setting up Continuous Integration (CI) pipelines in Azure DevOps using both YAML and Classic pipelines. By the end, you’ll have both methods configured for your project.

## 🛠️ Prerequisites

1. **Azure DevOps Account**: Ensure you have an Azure DevOps account. Sign up at [Azure DevOps](https://dev.azure.com/).
2. **Code Repository**: Your code should be pushed to an Azure DevOps repository or another supported version control system.
3. **Basic Knowledge**: Familiarity with Azure DevOps and pipelines.

## 📦 YAML Pipeline Setup

### 1. Create a New Pipeline

1. **Navigate to Pipelines**:
   - Go to the **Pipelines** section in your Azure DevOps project.
   - Click on **Create Pipeline**.

2. **Select Repository**:
   - Choose the repository where your code is stored.

3. **Configure YAML**:
   - Select **YAML** as the configuration method.
   - Choose **Starter pipeline** or **Existing YAML file** depending on whether you want to start from scratch or use an existing YAML file.

### 2. Define Your YAML Configuration

1. **Create or Edit `azure-pipelines.yml`**:
   - In the root directory of your repository, create a file named `azure-pipelines.yml` (or edit an existing one).

2. **Add Pipeline Configuration**:
   - Here’s a sample YAML configuration for a Node.js project:

   ```yaml
   trigger:
   - main  # Branch to trigger the pipeline

   pool:
     vmImage: 'ubuntu-latest'  # Use Microsoft-hosted Ubuntu agent

   steps:
   - task: UseNode@2
     inputs:
       versionSpec: '16.x'  # Specify Node.js version

   - script: |
       npm install
       npm test
     displayName: 'Install Dependencies and Run Tests'
   ```

   *Note: Adjust `versionSpec` for your Node.js version or modify the steps for your specific project.*

### 3. Save and Run

1. **Commit YAML File**:
   - Commit the `azure-pipelines.yml` file to your repository.

2. **Run the Pipeline**:
   - Go back to the **Pipelines** section.
   - You should see your pipeline listed. Click on it to start the initial run.

### 4. Monitor Your Pipeline

1. **Check Status**:
   - Monitor the progress from the **Pipelines** dashboard.
   - View logs to check build and test results.

## 🏗️ Classic Pipeline Setup

### 1. Create a New Pipeline

1. **Navigate to Pipelines**:
   - Go to the **Pipelines** section in your Azure DevOps project.
   - Click on **Create Pipeline**.

2. **Select Classic Editor**:
   - Choose **Use the classic editor** to configure your pipeline without YAML.

### 2. Configure Classic Pipeline

1. **Select Repository**:
   - Choose the repository where your code is stored.

2. **Define Pipeline Settings**:
   - **Pipeline Configuration**: Select **Empty Job** to start with a blank pipeline.
   - **Agent Pool**: Choose the agent pool for the pipeline (e.g., Microsoft-hosted or self-hosted).

3. **Add Tasks**:
   - **Add Build Task**:
     - Click **+** to add a new task.
     - Select tasks relevant to your build process (e.g., **npm** for Node.js).
   - **Add Test Task**:
     - Add a task to run tests, such as **npm test**.

4. **Configure Task Details**:
   - Configure each task’s settings according to your project requirements.

### 3. Save and Run

1. **Save Pipeline**:
   - Click on **Save & Queue** to save your pipeline and queue a new build.

2. **Run the Pipeline**:
   - Confirm the pipeline configuration and start the build.

### 4. Monitor Your Pipeline

1. **Check Status**:
   - View the pipeline's progress from the **Pipelines** dashboard.
   - Check the logs for build and test results.

## 📝 Additional Resources

- [Azure Pipelines YAML Documentation](https://docs.microsoft.com/en-us/azure/devops/pipelines/yaml-schema?view=azure-devops)
- [Classic Pipelines Documentation](https://docs.microsoft.com/en-us/azure/devops/pipelines/?view=azure-devops)
- [Sample YAML Configurations](https://docs.microsoft.com/en-us/azure/devops/pipelines/yaml-schema?view=azure-devops)

## 🤝 Need Help?

If you have any issues or questions, reach out to the Azure DevOps community or consult the [support resources](https://docs.microsoft.com/en-us/azure/devops/support/).

Happy building and deploying! 🌟

---
