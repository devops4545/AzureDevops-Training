# Task 7: ⚔️ Simulate and Resolve Conflicts in Branches

## Overview

In this task, you'll learn how to simulate and resolve conflicts between branches in Azure DevOps. Understanding how to handle conflicts is crucial for maintaining a smooth workflow when working with multiple branches.

## Prerequisites

Before you start, ensure you have:
- An active Azure DevOps account. [Sign up here](https://azure.microsoft.com/en-us/services/devops/).
- Access to a project with a Git repository where you can practice conflict resolution.

## Steps

### 1. Create and Checkout Branches 🧑‍💻

1. **Sign in to Azure DevOps:**
   - Go to [Azure DevOps](https://dev.azure.com/) and log in with your credentials.

2. **Navigate to Your Project:**
   - Select the project containing the repository where you want to simulate conflicts.

3. **Open Azure Repos:**
   - From the left-hand menu, select **Repos**.

4. **Create Two Branches:**
   - Create two branches from `master` for conflict simulation. For example, `feature/branch1` and `feature/branch2`.

   You can create branches in Azure DevOps by navigating to the **Branches** view and selecting **New Branch**.

### 2. Simulate a Conflict 🤔

1. **Checkout `feature/branch1`:**
   - Use VS Code or Git command line to switch to `feature/branch1`.

2. **Modify a File:**
   - Make changes to a file in `feature/branch1` and commit them. For example:
     ```sh
     git checkout feature/branch1
     echo "Change from branch1" >> conflict-file.txt
     git add conflict-file.txt
     git commit -m "Change from branch1"
     ```

3. **Checkout `feature/branch2`:**
   - Switch to `feature/branch2` and make conflicting changes to the same file.
     ```sh
     git checkout feature/branch2
     echo "Change from branch2" >> conflict-file.txt
     git add conflict-file.txt
     git commit -m "Change from branch2"
     ```

### 3. Merge and Resolve Conflicts 🛠️

1. **Merge `feature/branch1` into `master`:**
   - Check out the `master` branch and merge `feature/branch1`.
     ```sh
     git checkout master
     git merge feature/branch1
     ```

2. **Merge `feature/branch2` into `master`:**
   - Attempt to merge `feature/branch2` into `master`. This will simulate a conflict.
     ```sh
     git merge feature/branch2
     ```

3. **Resolve the Conflict:**
   - Git will indicate a conflict in the file. Open the conflicted file in VS Code or your preferred editor. You'll see conflict markers (e.g., `<<<<<<`, `======`, `>>>>>>`).
   - Edit the file to resolve the conflict by choosing or combining the changes as necessary.
   - After resolving the conflict, mark it as resolved and complete the merge:
     ```sh
     git add conflict-file.txt
     git commit -m "Resolved merge conflict between feature/branch1 and feature/branch2"
     ```

### 4. Verify the Merge ✅

1. **Check the File:**
   - Ensure that the file `conflict-file.txt` contains the resolved content.

2. **Push Changes (if needed):**
   - Push your changes to the remote repository:
     ```sh
     git push origin master
     ```

## Additional Notes

- **Conflict Resolution:** Always review the changes carefully when resolving conflicts to ensure that you don't lose important modifications.
- **Best Practices:** Regularly pull the latest changes from the main branch to reduce the likelihood of conflicts.
- **Documentation:** For more detailed information on conflict resolution, consult the [Git conflict resolution documentation](https://docs.github.com/en/get-started/using-git/resolving-a-merge-conflict).

## Conclusion

By following these steps, you will have simulated and resolved conflicts between branches in Azure DevOps. Mastering conflict resolution helps maintain a smooth development workflow and ensures code integrity across branches.

---