Sure! Here’s a README file with instructions for setting up multiple agents from a single VM for Azure DevOps self-hosted agents. This setup can be useful for optimizing resource usage and running multiple jobs concurrently.

---

# 🚀 Setting Up Multiple Azure DevOps Self-Hosted Agents on a Single VM

Welcome! 🎉 In this guide, we’ll walk you through the process of setting up multiple Azure DevOps self-hosted agents on a single VM. This can help you maximize the efficiency of your CI/CD pipeline by allowing multiple jobs to run simultaneously.

## 🛠️ Prerequisites

1. **Azure DevOps Account**: Ensure you have an Azure DevOps account. Sign up at [Azure DevOps](https://dev.azure.com/).
2. **VM Setup**: A virtual machine (VM) with a supported operating system (Windows, Linux) and sufficient resources (CPU, memory) for running multiple agents.
3. **Basic Knowledge**: Familiarity with Azure DevOps and self-hosted agents.

## 🏠 Prepare Your VM

### 1. Ensure Required Software

1. **Install Node.js**: If using a Node.js project, make sure Node.js and npm are installed on your VM.
2. **Install Additional Tools**: Install any other tools or dependencies your builds require.

### 2. Configure VM Resources

1. Ensure your VM has enough resources (CPU, RAM) to handle multiple agents.
2. Check your VM’s performance and adjust resources if needed.

## 🧩 Set Up Multiple Agents

### 1. Download and Extract the Agent Package

1. **Download Agent Package**:
   - Go to your [Azure DevOps organization](https://dev.azure.com/).
   - Navigate to **Project Settings** > **Agent Pools**.
   - Select the agent pool where you want to add the agents.
   - Click **New Agent**, select your operating system, and download the package.

2. **Extract the Package**:
   - Extract the downloaded agent package to a directory on your VM. For example, `C:\agent` on Windows or `/home/user/agent` on Linux.

### 2. Configure the First Agent

1. Open a command prompt or terminal.
2. Navigate to the directory where you extracted the agent package.
3. Run the configuration command:

   - **Windows**:
     ```shell
     .\config.cmd
     ```
   - **Linux/macOS**:
     ```shell
     ./config.sh
     ```

4. Follow the prompts to configure the agent:
   - **Azure DevOps URL**: Enter the URL of your Azure DevOps organization.
   - **Personal Access Token**: Enter your personal access token.
   - **Agent Pool**: Select the agent pool you want this agent to belong to.
   - **Agent Name**: Provide a unique name for this agent.
   - **Work Directory**: Specify the directory where the agent will store its work files.

5. **Run the Agent**:
   - **Windows**:
     ```shell
     .\run.cmd
     ```
   - **Linux/macOS**:
     ```shell
     ./run.sh
     ```

### 3. Duplicate and Configure Additional Agents

1. **Duplicate the Agent Directory**:
   - Create additional directories for each agent you want to set up. For example, `C:\agent2`, `C:\agent3` on Windows, or `/home/user/agent2`, `/home/user/agent3` on Linux.

2. **Configure Additional Agents**:
   - Navigate to each new agent directory.
   - Run the configuration command for each agent, ensuring that each agent has a unique name and work directory.

   Example configuration command for a second agent:
   - **Windows**:
     ```shell
     C:\agent2\config.cmd
     ```
   - **Linux/macOS**:
     ```shell
     /home/user/agent2/config.sh
     ```

3. **Start Additional Agents**:
   - **Windows**:
     ```shell
     C:\agent2\run.cmd
     ```
   - **Linux/macOS**:
     ```shell
     /home/user/agent2/run.sh
     ```

## 🔧 Verify Your Agents

1. Go to **Project Settings** > **Agent Pools** in Azure DevOps.
2. Verify that all agents are listed under the selected agent pool.
3. Check their status and ensure they are online and ready to run jobs.

## 📝 Additional Resources

- [Azure DevOps Self-Hosted Agents Documentation](https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/?view=azure-devops)
- [Agent Pool Management](https://docs.microsoft.com/en-us/azure/devops/pipelines/agile/agent-pools?view=azure-devops)

## 🤝 Need Help?

If you encounter issues or have questions, reach out to the Azure DevOps community or consult the [support resources](https://docs.microsoft.com/en-us/azure/devops/support/).

Happy automating and optimizing! 🌟

---
