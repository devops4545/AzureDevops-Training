# Task 11: ✔️ Build Validation and Status Checks in PR Workflow

## Overview

In this task, you’ll learn how to set up build validation and status checks in the pull request (PR) workflow in Azure DevOps. These checks help ensure that code changes are automatically tested and validated before they are merged into the main branch, improving code quality and reducing integration issues.

## Prerequisites

Before you start, ensure you have:
- An active Azure DevOps account. [Sign up here](https://azure.microsoft.com/en-us/services/devops/).
- An existing build pipeline configured in Azure Pipelines.
- Access to a project with an existing Git repository and pull request setup.

## Steps

### 1. Navigate to Your Repository 📂

1. **Sign in to Azure DevOps:**
   - Go to [Azure DevOps](https://dev.azure.com/) and log in with your credentials.

2. **Select Your Project:**
   - Choose the project containing the repository you want to configure.

3. **Open Repos:**
   - From the left-hand menu, select **Repos** to access your repository.

4. **Go to Pull Requests:**
   - Click on **Pull Requests** to view the list of pull requests and their statuses.

### 2. Configure Build Validation 🔄

1. **Access Branch Policies:**
   - Click on **Branches** from the left menu.
   - Locate the main branch (e.g., `main` or `master`) for which you want to configure build validation. Click on the ellipsis (three dots) next to the branch name.
   - Select **Branch policies** from the dropdown menu.

2. **Add Build Validation Policy:**
   - In the Branch Policies section, scroll down to **Build Validation**.
   - Click on **Add build policy**.

3. **Configure Build Pipeline:**
   - Select the build pipeline you want to use for validation. This pipeline will run whenever a PR is created or updated.
   - **Branch Filters:** Set branch filters to specify which branches will trigger this build validation.
   - **Policy Requirements:** Configure additional settings such as the minimum number of successful builds required before the PR can be completed.
   - Click **Save** to apply the build validation policy.

### 3. Set Up Status Checks 🛠️

1. **Access Status Checks:**
   - In the Branch Policies section, scroll down to **Status Checks**.
   - Click on **Add status check**.

2. **Configure Status Checks:**
   - **Add Status Check:** Enter the name of the status check. This can be an external tool or service that provides a status (e.g., code quality, security scan).
   - **Check Status:** Configure the conditions under which the status check must be successful before the PR can be completed.
   - Click **Save** to apply the status check policy.

### 4. Verify Policy Application ✅

1. **Create or Update a Pull Request:**
   - Create a new pull request or update an existing one to trigger the build validation and status checks.

2. **Review Status:**
   - Check the pull request details to ensure that the build validation and status checks are being applied correctly. The PR should show the status of the build and any other configured status checks.

3. **Monitor Build Results:**
   - Monitor the build pipeline results to verify that the build validation is running as expected and that any issues are reported.

## Additional Notes

- **Build Pipelines:** Ensure that your build pipeline is properly configured and can run independently of the PR process.
- **Status Checks:** Integrate useful status checks based on your project’s needs to enhance code quality and security.
- **Documentation:** For more detailed information on build validation and status checks, refer to the [Azure DevOps documentation on branch policies](https://docs.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops).

## Conclusion

By following these steps, you will have successfully configured build validation and status checks in your PR workflow in Azure DevOps. This ensures that code changes are automatically validated and checked before they are merged, improving the overall quality and stability of your codebase.

---

