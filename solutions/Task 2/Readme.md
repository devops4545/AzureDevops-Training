# Task 2: 🔄 Integrate GitHub with Azure Boards and Fix an Issue from a Commit

## Overview

In this task, you'll integrate GitHub with Azure Boards to track work items and issues. You’ll also learn how to fix an issue identified in a commit and link the fix to an Azure Boards work item. This integration helps in maintaining a seamless workflow between code management and project tracking.

## Prerequisites

Before you start, ensure you have:
- An Azure DevOps account. [Sign up here](https://azure.microsoft.com/en-us/services/devops/).
- A GitHub repository that you have access to.
- Basic knowledge of Git and Azure Boards.

## Steps

### 1. Integrate GitHub with Azure Boards

1. **Sign in to Azure DevOps:**
   - Go to [Azure DevOps](https://dev.azure.com/) and log in with your credentials.

2. **Navigate to Project Settings:**
   - Go to your project and click on **Project settings** in the lower-left corner.

3. **Select Service Connections:**
   - Under the **Pipelines** section, select **Service connections**.

4. **Add a New Service Connection:**
   - Click **New service connection** and choose **GitHub**.

5. **Authorize Azure DevOps to Access GitHub:**
   - Follow the prompts to authorize Azure DevOps to access your GitHub account.
   - You may need to provide an access token or authenticate through GitHub.

6. **Configure the Connection:**
   - Provide a name for the connection (e.g., `GitHub Connection`).
   - Select the GitHub repository you want to integrate with Azure Boards.
   - Click **Verify and Save**.

7. **Link GitHub Repository to Azure Boards:**
   - Go to **Boards** in Azure DevOps and select **Project settings**.
   - Under **Boards**, choose **GitHub Connections** and ensure your repository is listed.

### 2. Fix an Issue from a Commit

1. **Identify the Issue:**
   - In GitHub, navigate to the repository and locate the commit related to the issue you need to fix.

2. **Create a Branch for the Fix:**
   - Open your terminal or Git client and create a new branch to work on the fix:
     ```sh
     git checkout -b fix/issue-branch
     ```

3. **Make the Fix:**
   - Apply the necessary code changes to address the issue identified in the commit.

4. **Commit the Fix:**
   - Commit your changes with a message referencing the Azure Boards work item. For example:
     ```sh
     git add .
     git commit -m "Fix issue as per Azure Boards work item #123"
     ```

5. **Push the Branch:**
   - Push your branch to GitHub:
     ```sh
     git push origin fix/issue-branch
     ```

6. **Create a Pull Request:**
   - Go to GitHub and create a pull request (PR) from your branch to the main branch.
   - In the PR description, include a reference to the Azure Boards work item by mentioning it with `AB#123`.

7. **Link the Pull Request to Azure Boards:**
   - Once the PR is created, go to Azure Boards and ensure that the work item is linked to the PR.

8. **Complete the Pull Request:**
   - After review and approval, merge the PR to the main branch.

## Additional Notes

- **Automation:** You can set up automation to link commits and PRs to Azure Boards work items by using keywords such as `AB#` in commit messages and PR descriptions.
- **Permissions:** Ensure you have the necessary permissions in both GitHub and Azure DevOps to perform these actions.
- **Documentation:** For further details, consult the [Azure DevOps documentation](https://docs.microsoft.com/en-us/azure/devops/?view=o365-worldwide) and [GitHub documentation](https://docs.github.com/en/github).

## Conclusion

By completing this task, you will have successfully integrated GitHub with Azure Boards and fixed an issue linked to a commit. This integration facilitates better tracking and management of work items and code changes across your development process.

---