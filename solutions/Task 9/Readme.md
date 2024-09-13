# Task 9: 🔄 Merge a Branch Using Rebase with Some Commits Ahead

## Overview

In this task, you’ll learn how to merge a branch using rebase in Azure DevOps, especially when the branch you are rebasing onto has commits ahead. Rebasing re-applies commits from one branch onto another, helping to keep a clean and linear commit history.

## Prerequisites

Before you start, ensure you have:
- An active Azure DevOps account. [Sign up here](https://azure.microsoft.com/en-us/services/devops/).
- Access to a project with a Git repository, including at least one branch to rebase and one branch that has commits ahead.

## Steps

### 1. Checkout the Branch to Rebase 🧑‍💻

1. **Open Your Repository in VS Code or Terminal:**
   - Open Visual Studio Code or your terminal and navigate to your local repository.

2. **Checkout Your Branch:**
   - Ensure you are on the branch that you want to rebase. For example, if you are rebasing `feature-branch` onto `master`, check out `feature-branch`:
     ```sh
     git checkout feature-branch
     ```

### 2. Fetch the Latest Changes 🚀

1. **Update Local Repository:**
   - Fetch the latest changes from the remote repository to ensure you have the most recent commits:
     ```sh
     git fetch origin
     ```

2. **Ensure Your Base Branch is Up-to-Date:**
   - Check out the base branch (e.g., `master`) and pull the latest changes:
     ```sh
     git checkout master
     git pull origin master
     ```

### 3. Rebase Your Branch onto the Updated Base Branch 🔄

1. **Rebase Your Branch:**
   - Switch back to your branch (e.g., `feature-branch`) and start the rebase process onto the updated base branch:
     ```sh
     git checkout feature-branch
     git rebase master
     ```

2. **Resolve Conflicts (if any):**
   - If there are conflicts during the rebase, Git will pause and prompt you to resolve them. Open the conflicted files, resolve the conflicts, and then continue the rebase:
     ```sh
     # After resolving conflicts
     git add <file>
     git rebase --continue
     ```

3. **Repeat Until Rebase is Complete:**
   - Continue resolving conflicts and running `git rebase --continue` until the rebase is complete.

### 4. Push the Rebased Branch 🔗

1. **Force Push Changes:**
   - Since rebasing rewrites commit history, you need to force push the rebased branch to update the remote repository:
     ```sh
     git push --force origin feature-branch
     ```

### 5. Create a Pull Request (PR) (Optional) 📥

1. **Open a Pull Request:**
   - Navigate to Azure DevOps and open a new pull request to merge the rebased branch (e.g., `feature-branch`) into the base branch (e.g., `master`).

2. **Complete the PR:**
   - Review the changes, add any required reviewers, and complete the pull request.

## Additional Notes

- **Rebasing Benefits:** Rebasing helps maintain a clean, linear commit history and makes integrating changes from other branches smoother.
- **Conflicts:** Resolve conflicts carefully to ensure that all intended changes are preserved.
- **Documentation:** For more detailed information, refer to the [Azure DevOps documentation on rebasing](https://docs.microsoft.com/en-us/azure/devops/repos/git/rebase?view=azure-devops).

## Conclusion

By following these steps, you will have successfully rebased a branch onto another branch with commits ahead, maintaining a clean and organized commit history. This process is valuable for ensuring that your branch integrates smoothly with the base branch.

---

Feel free to adjust these instructions based on your specific project requirements or workflow. 🌟
