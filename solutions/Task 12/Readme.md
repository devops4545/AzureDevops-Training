# Task 12: 🔗 Add Reviewers Automatically in PR and Link Work Items at All Stages

## Overview

In this task, you will learn how to automatically add reviewers to pull requests (PRs) in Azure DevOps and link work items at various stages of the development process: during commits, in pull requests, and after merging. This helps streamline the code review process and ensures that work items are properly tracked throughout the workflow.

## Prerequisites

Before you start, ensure you have:
- An active Azure DevOps account. [Sign up here](https://azure.microsoft.com/en-us/services/devops/).
- Access to a project with an existing Git repository.
- Permissions to configure branch policies and pull request settings.

## Steps

### 1. Automatically Add Reviewers to Pull Requests 📑

1. **Sign in to Azure DevOps:**
   - Go to [Azure DevOps](https://dev.azure.com/) and log in with your credentials.

2. **Navigate to Your Project:**
   - Select the project containing the repository where you want to configure automatic reviewers.

3. **Access Branch Policies:**
   - From the left-hand menu, select **Repos** > **Branches**.
   - Find the branch (e.g., `main` or `master`) for which you want to configure automatic reviewers. Click on the ellipsis (three dots) next to the branch name and select **Branch policies**.

4. **Configure Automatic Reviewers:**
   - Scroll down to the **Minimum number of reviewers** section.
   - Click **Add automatic reviewer**.
   - **Select Reviewers:** Choose the team or individuals who should automatically review pull requests. You can add specific users or groups.
   - **Configure Requirements:** Set any additional requirements, such as the number of required reviewers or review duration.
   - Click **Save** to apply the changes.

### 2. Link Work Items in Commits, PRs, and Merges 🔗

#### 2.1 Link Work Items in Commits

1. **Include Work Item References in Commit Messages:**
   - When making a commit, include the work item ID in the commit message using the syntax `#<workitem_id>`. For example:
     ```sh
     git commit -m "Fix issue with login #123"
     ```

2. **Push Changes:**
   - Push your commits to the remote repository:
     ```sh
     git push origin <branch-name>
     ```

3. **Verify Linkage:**
   - Go to Azure DevOps and navigate to the **Commits** section of your repository. Check that the commit message links to the relevant work item.

#### 2.2 Link Work Items in Pull Requests

1. **Open a Pull Request:**
   - Create a new pull request or update an existing one.

2. **Link Work Items in PR Description:**
   - In the pull request description, use the syntax `#<workitem_id>` to link the relevant work items. For example:
     ```markdown
     This pull request addresses the issue with login as described in work item #123.
     ```

3. **Verify Linkage:**
   - Review the pull request to ensure that the work items are properly linked and visible.

#### 2.3 Link Work Items After Merging

1. **Check Work Item Status:**
   - After the pull request is merged, navigate to the work items linked in the PR.

2. **Update Work Item Status:**
   - Manually or automatically update the status of the work items based on your workflow. You might configure Azure DevOps to automatically update work item statuses when a PR is completed.

3. **Verify Status:**
   - Ensure that the work items reflect the changes in their status or other fields after the merge.

## Additional Notes

- **Automatic Reviewers:** Automatically assigning reviewers helps ensure that code reviews are consistently performed by the right people.
- **Work Item Tracking:** Properly linking work items helps maintain traceability and accountability throughout the development process.
- **Documentation:** For more detailed information, refer to the [Azure DevOps documentation on branch policies and work item tracking](https://docs.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops).

## Conclusion

By following these steps, you will have successfully set up automatic reviewers for pull requests and linked work items at all stages of the development process. This enhances the efficiency of code reviews and ensures better tracking and management of work items.

---


