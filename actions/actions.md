# Guidelines on how to use GitHub Actions to automate your workflows.
_Credits to the [skills/hello-github-actions](https://github.com/skills/hello-github-actions) course from GitHub for most information in this page._

GitHub actions are a way to automate your workflows. You can use them to build, test, package, release, or deploy any project on GitHub. You can also use them to automate any task that you can imagine. These actions are defined in special files in the `.github/workflows` directory and they execute based on the chosen event. Some examples of events are: `push`, `pull_request`, `release`, `schedule`, among others.

## 1. Create a workflow file

To create a workflow file, you need to create a new file in the `.github/workflows` directory. The name of the file must end with `.yml` or `.yaml`. The name of the file should be the name of the workflow. An example of a workflow file is the following:

```yaml
# Name of the workflow
name: My first workflow

# When the workflow should be triggered
    # Some examples are: push, pull_request, release, schedule, etc.
on: push

# Jobs to be executed
jobs:
    build:
        # Name of the job, which appears in the GitHub Actions dashboard.
        name: My first job

        # The type of virtual environment where the job will run.
        # In this case, it's set to run on the latest version of Ubuntu.
        runs-on: ubuntu-latest

        # Steps define the individual tasks to be executed within the job.
        steps:
        - name: Hello world
            # This step simply prints "Hello world!" to the console.
            run: echo "Hello world!"
```

## 2. Common actions and their uses

### 2.1. Testing

You can use GitHub Actions to test your code. For example, you can use the following workflow to test your code on the latest version of Ubuntu, macOS, and Windows.

An useful tutorial on how to test your code can be found at [test-with-actions](https://github.com/skills/test-with-actions).

You can learn more in detail at [learn-github-actions](https://docs.github.com/en/actions/learn-github-actions)
