# Automation Documentation

This repository uses GitHub Actions to automate various tasks including dependency updates and pull request management.

## Auto-Merge System

### Overview
The auto-merge system automatically merges pull requests created by GitHub Actions bots without requiring manual intervention.

### How It Works

1. **Trigger**: When a pull request is opened, synchronized, or reopened by `github-actions[bot]`
2. **Enable Auto-Merge**: The workflow enables GitHub's auto-merge feature for the PR
3. **Merge**: The PR automatically merges once all required checks pass
4. **Cleanup**: The source branch is automatically deleted after merge

**Note**: If your repository has branch protection rules that require pull request reviews, the auto-merge will wait until those reviews are provided. For fully automatic merging without reviews, ensure branch protection allows bypassing reviews for bot PRs or disable required reviews.

### Workflow File
- **Location**: `.github/workflows/auto-merge-bot-prs.yml`
- **Trigger**: `pull_request_target` on `opened`, `synchronize`, `reopened` events
- **Condition**: Only runs for PRs created by `github-actions[bot]`

### Key Features

- **Auto-Merge**: Uses GitHub's auto-merge feature (`--auto` flag) to merge when checks pass
- **Safe**: Only applies to PRs created by trusted bot accounts
- **Squash Merge**: PRs are squashed into a single commit
- **Branch Cleanup**: Source branches are automatically deleted
- **No Manual Intervention**: PRs merge automatically once all checks pass (subject to branch protection rules)

## Automated Workflows

### BlockTheSpot Auto-Update
- **File**: `.github/workflows/update-blockthespot.yml`
- **Schedule**: Runs daily at 00:00 UTC
- **Purpose**: Checks for new BlockTheSpot releases and creates a PR to update the version
- **Auto-Merge**: Yes, via the auto-merge workflow

### License Year Update
- **File**: `.github/workflows/update-license.yml`
- **Schedule**: Runs annually on January 1st
- **Purpose**: Updates the copyright year in the LICENSE file
- **Auto-Merge**: N/A (commits directly to main)

### Auto-Close False Positives
- **File**: `.github/workflows/auto-closes-false-positive.yml`
- **Trigger**: When issues are opened/reopened/edited
- **Purpose**: Automatically closes issues related to antivirus false positives

## Manual Workflow Approval

By default, workflows that are triggered by other workflows (e.g., PRs created by `update-blockthespot.yml`) would require manual approval. This repository is configured to automatically run workflows without manual approval by using:

1. **`pull_request_target` trigger**: Allows workflows to run with elevated permissions
2. **Bot-specific conditions**: Only auto-merges PRs from trusted bot accounts
3. **GitHub's auto-merge feature**: Enables automatic merging once all checks pass

## Security Considerations

- The auto-merge workflow only applies to PRs created by `github-actions[bot]`
- Other PRs still require manual review and approval
- The `pull_request_target` trigger is used carefully with explicit conditions to prevent security risks
- All automated PRs go through the standard CI/CD checks before merging

## Troubleshooting

### PR Not Auto-Merging

1. Check if the PR author is `github-actions[bot]`
2. Verify that all required checks are passing
3. Check the workflow run logs for errors
4. Ensure branch protection rules allow auto-merge

### Workflow Not Running

1. Check if the trigger conditions are met
2. Verify workflow file syntax (YAML validation)
3. Check repository settings for workflow permissions
4. Review GitHub Actions logs for error messages
