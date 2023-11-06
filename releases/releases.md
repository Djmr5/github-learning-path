# Guidelines on how to create releases for your GitHub repositories.

## :white_check_mark: Common workflow.

1. Create a new draft release.
2. Choose a tag version using [semantic versioning](#semantic-versioning).
3. Choose the release branch.
4. Add a title and description.
    - You can automate the `release notes` using the button above the description field.
        - For more information, look at [Automatically generated release notes Docs](https://docs.github.com/en/repositories/releasing-projects-on-github/automatically-generated-release-notes)
5. Select the following options if required:
    - `Set as a pre-release`
    - `Set as the latest release`

### Semantic versioning

Semantic versioning is a formal convention for specifying compatibility. It uses a three-part version number: **major version**; **minor version**; and **patch**. Version numbers convey meaning about the underlying code and what has been modified. For example, versioning could be handled as follows:

| Code status                     | Stage         | Rule                                                                   | Example version |
| ------------------------------- | ------------- | ---------------------------------------------------------------------- | --------------- |
| First release                   | New product   | Start with 1.0.0                                                       | 1.0.0           |
| Backward compatible fix         | Patch release | Increment the third digit                                              | 1.0.1           |
| Backward compatible new feature | Minor release | Increment the middle digit and reset the last digit to zero            | 1.1.0           |
| Breaking updates                | Major release | Increment the first digit and reset the middle and last digits to zero | 2.0.0           |

Check out this article on [Semantic versioning](https://semver.org/) to learn more.

- Credits to the [skills/release-based-workflow](https://github.com/skills/release-based-workflow) course from GitHub for this section.