# Task 8: 🔄 Merge a Branch Using Squash Merge with PR

## Overview

In this task, you’ll learn how to merge a branch into the main branch using a squash merge with a pull request (PR) in Azure DevOps. Squash merging combines all the commits from a branch into a single commit on the target branch, which helps keep the commit history clean.

## Prerequisites

Before you start, ensure you have:
- An active Azure DevOps account. [Sign up here](https://azure.microsoft.com/en-us/services/devops/).
- Access to a project with an existing Git repository and at least one branch to merge.

## Steps

### 1. Create a Pull Request (PR) 📝

1. **Sign in to Azure DevOps:**
   - Go to [Azure DevOps](https://dev.azure.com/) and log in with your credentials.

2. **Navigate to Your Project:**
   - Select the project containing the repository and branches where you want to create the PR.

3. **Access Repos:**
   - From the left-hand menu, select **Repos** and then **Pull requests**.

4. **Create a New Pull Request:**
   - Click on **New Pull Request**.
   - **Select Branches:** Set the **Source branch** (the branch you want to merge) and **Target branch** (usually `master` or `main`).
   - **Review the Changes:** Ensure that the changes to be merged are correctly displayed.

5. **Complete PR Details:**
   - **Title and Description:** Enter a descriptive title and optional description for your pull request.
   - **Reviewers:** Add any required reviewers if needed.
   - Click **Create** to open the pull request.

### 2. Configure the Squash Merge Option ⚙️

1. **Open the Pull Request:**
   - In the PR details view, scroll to the bottom or top to find the merge options.

2. **Select Squash Merge:**
   - Click on the dropdown menu for **Complete** or **Merge** options.
   - Choose **Squash Merge** from the available merge strategies.

   ![Squash Merge Option](https://docs.microsoft.com/en-us/azure/devops/repos/git/media/merge-pull-requests/squash-merge.png)

3. **Review and Complete the Merge:**
   - **Commit Message:** Enter a commit message for the squashed commit. This message will represent all the changes from the branch.
   - Click **Complete** to finalize the merge.

### 3. Verify the Merge ✅

1. **Check the Target Branch:**
   - Go to the **Branches** view and select the target branch (e.g., `master` or `main`).

2. **Review Commit History:**
   - Ensure that the commit history reflects the single squashed commit from the merged branch.

3. **Clean Up (Optional):**
   - After successful merging, you can delete the source branch if it is no longer needed. This can be done from the **Branches** view.

## Additional Notes

- **Squash Merge Benefits:** Squash merging helps in keeping the commit history clean by combining all changes into a single commit.
- **Commit Message:** Use a clear and descriptive commit message to summarize the changes from the branch.
- **Documentation:** For more detailed information, refer to the [Azure DevOps documentation on pull requests](https://docs.microsoft.com/en-us/azure/devops/repos/git/complete-pull-request?view=azure-devops).

## Conclusion

By following these steps, you will have successfully merged a branch into the main branch using a squash merge with a pull request in Azure DevOps. This practice helps maintain a streamlined commit history and simplifies code integration.

---
