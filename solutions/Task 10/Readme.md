# Task 10: 📜 Create Branch Policies for Main Branches in Azure DevOps

## Overview

In this task, you'll learn how to create and configure branch policies for main branches in Azure DevOps. Branch policies help enforce best practices, such as requiring code reviews or build validation, ensuring higher code quality and smoother workflows.

## Prerequisites

Before you start, ensure you have:
- An active Azure DevOps account. [Sign up here](https://azure.microsoft.com/en-us/services/devops/).
- Access to a project with an existing Git repository.

## Steps

### 1. Navigate to Your Repository 📂

1. **Sign in to Azure DevOps:**
   - Go to [Azure DevOps](https://dev.azure.com/) and log in with your credentials.

2. **Select Your Project:**
   - Choose the project that contains the repository for which you want to create branch policies.

3. **Open Repos:**
   - From the left-hand menu, select **Repos** to access your repository.

4. **Go to Branches:**
   - Click on **Branches** to view the list of branches in your repository.

### 2. Access Branch Policies ⚙️

1. **Select the Branch:**
   - Identify the main branch (e.g., `main` or `master`) for which you want to create policies. Click on the ellipsis (three dots) next to the branch name.

2. **Configure Policies:**
   - From the dropdown menu, select **Branch policies**.

### 3. Create and Configure Branch Policies 📜

1. **Require a Minimum Number of Reviewers:**
   - Under **Policy Requirements**, toggle on **Minimum number of reviewers**.
   - Set the number of required reviewers (e.g., 2).
   - Optionally, configure additional settings like allowing reviewers to approve without completing required approvals.

2. **Check for a Successful Build:**
   - Enable **Build Validation**.
   - Click on **Add build policy** and choose a build pipeline to ensure that code is successfully built before it can be merged.
   - Configure additional settings like the policy trigger and build expiration.

3. **Enforce Merge Strategies:**
   - Under **Merge Strategy**, select the appropriate strategy for merging changes, such as **Squash** or **Rebase and fast-forward**.

4. **Require Code Review Policy:**
   - Optionally, enable **Code Review** policies to enforce code quality by requiring specific review criteria.

5. **Configure Required Status Checks:**
   - Enable **Status Checks** to ensure that specific statuses (e.g., external tools) are passing before a pull request can be completed.

6. **Create and Save Policy:**
   - After configuring the policies, click **Save** to apply them to the selected branch.

### 4. Verify Policy Application ✅

1. **Review Policies:**
   - Confirm that the policies are listed under the branch policies for the selected branch.

2. **Test Policy Enforcement:**
   - Create a pull request or attempt to merge changes to verify that the policies are enforced as expected.

## Additional Notes

- **Branch Protection:** Policies help protect main branches from inadvertent changes and ensure high code quality.
- **Policy Configuration:** Adjust policies based on your team’s needs and workflow practices.
- **Documentation:** For more detailed information on branch policies, refer to the [Azure DevOps documentation on branch policies](https://docs.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops).

## Conclusion

By following these steps, you will have successfully created and configured branch policies for your main branches in Azure DevOps. This helps enforce best practices, improve code quality, and maintain a stable main branch.

---

