# zoja_tech_assessment

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


##Please find attached branching strategy for project
1.Main Branches:
-'main' or 'master': A production-ready branch with deployable code. Only tested and stable code is merged here.
- 'develop': This branch is always used for integration. All developers merge their feature branches into develop. This will be the staging area for the next release.

2.Supporting Branches:
*Feature Branches ('feature/'):
- These are branches created from 'develop' for the development of new features or enhancements.
- Naming convention: 'feature/feature-name'.
- Once the feature is complete and has passed initial tests, it is merged back into the `develop` branch.
- Feature branches should undergo code review before merging.

*Release Branches ('release/'):
- A release branch is created from `develop` when the code in `develop` is feature complete and ready to be prepared for a production release.
- Naming convention: 'release/x.y.z', where 'x.y.z' represents the version number.
- Bug fixes, documentation, and minor tweaks are done in this branch.
- After final testing, this branch is merged into both 'main' and 'develop'. The 'main' receives the production-ready code and the last-minute bug fixes are pushed to 'develop'.

*Hotfix Branches ('hotfix/'):
- Hotfix branches are used for critical bug fixes that need to go into production immediately.
  These branches come out of 'main'.
- Naming Convention: 'hotfix/x.y.z'.
- When completed, it gets merged both to 'main' and 'develop' — or the latest release branch — to include the fix within ongoing development, too.

3.Merge Strategy:
-Feature Branches to 'develop': Integrate with a pull request process that includes code reviews. This allows catching probable errors at an early stage of the process and maintaining quality in code.
-Release Branches to 'main' and 'develop': Merge commits of 'release' onto 'main' after all tests have passed. Then, the same release branch is merged into 'develop' for including changes.
-Hotfix Branches to 'main' and 'develop': The hotfixes are then merged directly into both 'main' and 'develop'.

4.Continuous Integration/Continuous Deployment (CI/CD):
- Automated Testing: Setting the CI pipelines to run tests automatically on all code pushed to feature branches, 'develop', and 'main' maintains code quality and allows for very early detection of possible issues.
- Deployment: Automatic deployment of code from the `main` branch to production, and optionally from the `develop` branch to a staging environment.

5.Versioning:
- Semantic Versioning: We would implement this kind of versioning, i.e: '1.0.0', '1.1.0', and '1.1.1', for releases. It helps in tracking changes and conveying the extent of changes brought about by an update to users and stakeholders alike.

6.Code Review and Approval:
- Ensure each pull request is looked over by at least two other developers.
- Enforce code review policies through the use of GitHub, GitLab, Bitbucket, or any other VCS tools. Avoid pushing directly to `develop` and 'main'.

7.Branch Protection:
– Protect 'main' and 'develop' branches by setting up PRs with required successful CI checks before merge. This makes sure no accidental direct commit, and only reviewed and tested code can be merged.

