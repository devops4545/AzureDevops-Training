# Task 13: 🔒 Lock a Branch in Azure Repos

## Overview

In this task, you will learn how to lock a branch in Azure Repos to prevent unauthorized changes. Locking a branch is useful for protecting critical branches, such as `main` or `release`, from accidental or unauthorized modifications.

## Prerequisites

Before you start, ensure you have:
- An active Azure DevOps account. [Sign up here](https://azure.microsoft.com/en-us/services/devops/).
- Access to a project with an existing Git repository.
- Permissions to configure branch security settings.

## Steps

### 1. Navigate to Your Repository 📂

1. **Sign in to Azure DevOps:**
   - Go to [Azure DevOps](https://dev.azure.com/) and log in with your credentials.

2. **Select Your Project:**
   - Choose the project containing the repository where you want to lock a branch.

3. **Open Repos:**
   - From the left-hand menu, select **Repos** to access your repository.

4. **Go to Branches:**
   - Click on **Branches** to view the list of branches in your repository.

### 2. Access Branch Security Settings 🔐

1. **Select the Branch:**
   - Find the branch you want to lock (e.g., `main` or `release`). Click on the ellipsis (three dots) next to the branch name.

2. **Configure Branch Security:**
   - From the dropdown menu, select **Branch security**.

### 3. Lock the Branch 🚪

1. **Edit Branch Permissions:**
   - In the Branch Security settings, you will see a list of users and groups with permissions for the branch.
   - Click on **Add permissions** if you want to specify permissions for certain users or groups, or **Edit** if you want to modify existing permissions.

2. **Set Permissions:**
   - To lock the branch, you can adjust the permissions for all users. For example:
     - **Deny** `Contribute` permission: This prevents users from pushing changes to the branch.
     - **Deny** `Create Branch` permission: This prevents users from creating new branches from the locked branch.
   - To apply these settings, make sure to **deny** the necessary permissions or set them to **Not Set** for all users/groups except administrators.

3. **Save Changes:**
   - After configuring the permissions, click **Save changes** to apply the new settings.

### 4. Verify the Lock 🔒

1. **Test Branch Protection:**
   - Try to perform operations that should be restricted (e.g., pushing changes or creating new branches) to verify that the branch is properly locked.

2. **Review Security Settings:**
   - Return to the **Branch security** settings to ensure that the lock is correctly applied and that only authorized users can modify the branch.

## Additional Notes

- **Branch Protection:** Locking a branch helps ensure that critical branches are protected from unintended changes, maintaining the integrity of important code.
- **Permissions Management:** Review and manage permissions regularly to ensure that only authorized users have access to critical branches.
- **Documentation:** For more detailed information on branch security and permissions, refer to the [Azure DevOps documentation on branch security](https://docs.microsoft.com/en-us/azure/devops/repos/git/branch-security?view=azure-devops).

## Conclusion

By following these steps, you will have successfully locked a branch in Azure Repos, preventing unauthorized changes and protecting critical branches in your repository.

---

