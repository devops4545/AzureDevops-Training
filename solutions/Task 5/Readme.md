# Task 5: ⬆️ Create a Repo in Azure Repos and Push Code

## Overview

In this task, you'll learn how to create a repository in Azure Repos and push code to it. This is an essential step for managing your codebase and collaborating with your team using version control.

## Prerequisites

Before you start, ensure you have:
- An active Azure DevOps account. [Sign up here](https://azure.microsoft.com/en-us/services/devops/).
- Access to a project in Azure DevOps where you can create a repository.

## Steps

### 1. Create a Repository in Azure Repos 📦

1. **Sign in to Azure DevOps:**
   - Go to [Azure DevOps](https://dev.azure.com/) and log in with your credentials.

2. **Navigate to Your Project:**
   - Select the project where you want to create the repository.

3. **Access Repos:**
   - From the left-hand menu, select **Repos**.

4. **Create a New Repository:**
   - Click on **New Repository**.
   - Enter a name for your repository. For example, `my-new-repo`.
   - Optionally, add a description and choose the repository type (Git is recommended).
   - Click **Create** to set up the repository.

### 2. Push Code to the Repository 🚀

1. **Open Your Local Terminal or Command Prompt:**
   - Navigate to the directory of your local project that you want to push to the new repository.

2. **Initialize Git (if not already done):**
   - If your project is not already a Git repository, initialize it with:
     ```sh
     git init
     ```

3. **Add Remote Repository:**
   - Link your local repository to the Azure Repos repository using the URL provided by Azure DevOps. Run:
     ```sh
     git remote add origin <repository-url>
     ```
     Replace `<repository-url>` with the URL of your Azure Repos repository, which can be found in the Azure Repos interface under **Clone**.

4. **Stage Your Code:**
   - Add your code to the staging area:
     ```sh
     git add .
     ```

5. **Commit Your Changes:**
   - Commit your staged changes with a message:
     ```sh
     git commit -m "Initial commit with project files"
     ```

6. **Push Your Code:**
   - Push your code to the Azure Repos repository:
     ```sh
     git push -u origin master
     ```

   Note: If your default branch is named `main` instead of `master`, use `main` in the command above.

## Additional Notes

- **Repository URL:** Make sure to use the HTTPS or SSH URL provided by Azure Repos for pushing code.
- **Branch Management:** For collaborative projects, consider using branches for features or fixes and merge them via pull requests.
- **Documentation:** For more detailed information, consult the [Azure Repos documentation](https://docs.microsoft.com/en-us/azure/devops/repos/?view=o365-worldwide).

## Conclusion

By completing these steps, you will have successfully created a repository in Azure Repos and pushed your code to it. This will enable you to start managing your code and collaborating with your team effectively.

---