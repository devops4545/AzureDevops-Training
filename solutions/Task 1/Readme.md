# Task 1: 🐞 Create an Agile Project and Retrieve Bugs in Azure DevOps Boards

## Overview

In this task, you'll create an Agile project in Azure DevOps and write a query to retrieve all the bugs associated with the project. This process will help you understand how to manage and track issues within an Agile framework using Azure DevOps Boards.

## Prerequisites

Before you begin, ensure you have the following:
- An active Azure DevOps account. [Sign up here](https://azure.microsoft.com/en-us/services/devops/).
- Access to an Azure DevOps organization where you have permissions to create projects and queries.

## Steps

### 1. Create an Agile Project

1. **Sign in to Azure DevOps:**
   - Go to [Azure DevOps](https://dev.azure.com/) and log in with your credentials.

2. **Create a New Project:**
   - Click on the **New Project** button.
   - Enter a name for your project. For example, `Agile Project`.
   - Select **Agile** as the process template.
   - Choose visibility settings (Private or Public) based on your preference.
   - Click **Create**.

### 2. Write a Query to Retrieve Bugs

1. **Navigate to Boards:**
   - In your project, go to **Boards** from the left-hand menu.

2. **Open Queries:**
   - Click on **Queries** under the Boards section.

3. **Create a New Query:**
   - Click on **New Query**.

4. **Set Up the Query:**
   - In the query editor, configure the following:
     - **Work Item Type:** Select `Bug`.
     - **State:** You can leave this blank or specify particular states (e.g., New, Active, Closed) if needed.
     - **Team Iteration Path:** Optionally, specify a path if you want to filter by a specific team or iteration.

5. **Run the Query:**
   - Click **Run Query** to see the list of bugs.

6. **Save the Query:**
   - Click on **Save Query** to save this query for future use.
   - Provide a name, such as `All Bugs Query`, and choose a folder to save it in.

## Additional Notes

- **Customizing Queries:** You can customize your query further by adding more filters or sorting options based on your needs.
- **Permissions:** Ensure you have the necessary permissions to create projects and queries in Azure DevOps.
- **Documentation:** For more detailed information, refer to the [Azure DevOps documentation](https://docs.microsoft.com/en-us/azure/devops/?view=o365-worldwide).

## Conclusion

By following these steps, you'll have set up an Agile project and created a query to track bugs effectively in Azure DevOps. This is a foundational skill for managing projects and tracking issues in an Agile environment.

---
