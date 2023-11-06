# Guidelines on how to contribute to repositories.

## :white_check_mark: Common workflow.

1. Fork the repository.
2. Clone the forked repository to your local machine.
3. [Create a new branch.](#2-creating-and-managing-branches)
4. Make changes.
5. [Commit changes.](#1-making-good-commits)
6. Push changes to the forked repository.
7. [Create a pull request.](#3-creating-a-pull-request)

- This workflow may vary depending on the repository ownership.

## 1. Making good commits.

### 1.1. How to commit.

1. Make sure you are in the correct branch.
```bash
git branch
```
2. Make sure you have the latest changes from the remote repository.
```bash
git pull origin <branch>
```
3. Show the changes you made.
```bash
git status
```
4. Add the changes you made.
```bash
# Add all changes (files) to the staging area one by one.
git add <file>
# or add all changes in the current directory.
git add .
```
5. Commit the changes.
```bash
git commit -m "Add feature"
```


### 1.2. Commit messages.

- Keep the first line of the commit message short, no more than 50 characters.
- Reference the issue number in the first line of the commit message if possible.
    - `git commit -m "Add feature #123"`
    - Use the keywords `close`, `closes`, `closed`, `fix`, `fixes`, `fixed`, `resolve`, `resolves`, `resolved` to close the issue.
    - `git commit -m "Add feature closes #123"`
- You can add a commit message body if you need to explain something in more detail as follows:
    - Leave a blank line after the first line.
    - Keep the body of the message wrapped at 72 characters.
    - Use the body to explain what and why vs. how.
```bash
git commit -m "Add feature" -m "This feature does this and that, and it's awesome because of this and that."
# Or you can use the editor:
 # This should open your editor of choice. Example: VIM.
git commit
```

```
Add feature <- Here goes the first line of the commit message that should be short.

This feature does this and that, and it's awesome because of this and that. <- Here goes the body of the commit message that should be wrapped at 72 characters. You can extend the body as much as you want but keep it simple.
```

- Use the present tense ("Add feature" not "Added feature").

## 2. Creating and managing branches.

### 2.1. Creating a new branch.
You can create a new branch in two ways:

1. Create a new branch and switch to it.
    - Branch name should be short and descriptive.
    - Lowercase letters and hyphens.
    - Use alphanumeric characters.
    - Use prefixes to distinguish the type of branch.
    - If possible, use the PMT (Project Management Tool) ticket to create the branch name.
        - `feature/T-456-user-authentication`
        - `bugfix/T-789-fix-header-styling`
        - `hotfix/T-321-security-patch`
        - `release/v2.0.1`
        - `docs/T-654-update-readme`
        - `style-T-987-update-styles`
```bash
git checkout -b <branch>
# or you can create a new branch and switch to it later.
git branch <branch>
git checkout <branch>
```

## 3. Creating a pull request.

1. Go to the forked repository.
2. Click on the `Pull requests` tab.
3. Click on the `New pull request` button.
4. Select the `base` repository and branch `branch_name`.
5. Select the `head` repository and branch `branch_name`.
6. Add a title and description to the pull request.
    - Might want to add tags, reviewers, and assignees.
7. Click on the `Create pull request` button.
