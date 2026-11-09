# pipeit-tutorial

# PipeIt: Automated CI/CD Pipeline with GitHub Actions

[![CI/CD Pipeline](https://github.com/rahimahisah17/pipeit-tutorial/actions/workflows/pipeline.yml/badge.svg)](https://github.com/rahimahisah17/pipeit-tutorial/actions/workflows/pipeline.yml)
[![Live Website](https://img.shields.io/badge/Live-Website-brightgreen)](https://rahimahisah17.github.io/pipeit-tutorial/)

A production-inspired CI/CD implementation using GitHub Actions, a custom composite action, automated testing, and GitHub Pages deployment.

**Live Website:** https://rahimahisah17.github.io/pipeit-tutorial/

## Project Overview

This project demonstrates an automated CI/CD pipeline that validates code, builds a website using a custom GitHub Action, and deploys the generated website to GitHub Pages.

Every push to the main branch triggers the pipeline automatically. A scheduled workflow also rebuilds the website daily.

## How It Works

The pipeline consists of three sequential jobs:

1. **Test:** Checks the README file for a valid Markdown heading.
2. **Build:** Executes a reusable custom GitHub Action to generate a website containing the run number, commit ID, build timestamp, and workflow trigger.
3. **Deploy:** Publishes the generated website through GitHub Pages.

The pipeline only proceeds when the preceding job succeeds.

## Repository Structure

```text
pipeit-tutorial/
├── .github/
│   ├── actions/
│   │   └── build-card/
│   │       └── action.yml
│   └── workflows/
│       ├── hello.yml
│       ├── ci.yml
│       └── pipeline.yml
├── tests/
│   └── check.sh
├── README.md
```

## Key Technologies

- GitHub Actions
- YAML
- Bash
- Git and GitHub
- GitHub Pages
- Composite Actions
- Continuous Integration (CI)
- Continuous Delivery (CD)

## Custom GitHub Action

The `build-card` composite action accepts a name and an optional message.

It generates `site/index.html` and writes a build summary directly to the GitHub Actions run page.

This demonstrates how reusable custom actions can simplify workflow automation.

## Automation Features

- Automated testing on code changes.
- Custom website generation.
- Automated GitHub Pages deployment.
- Scheduled daily builds.
- Manual workflow execution.
- Build metadata and execution summaries.

## What This Project Demonstrates

- Designing multi-job CI/CD workflows.
- Implementing reusable composite GitHub Actions.
- Managing workflow dependencies with `needs`.
- Using GitHub Actions permissions securely.
- Generating and publishing static websites.
- Troubleshooting workflow failures through execution logs.
- Automating deployments without manual intervention.

## Potential Improvements

- Add additional application and deployment tests.
- Introduce branch protection and pull request validation.
- Extend the pipeline with deployment notifications.
- Add a second custom action for additional build tasks.

## Author

**Rahimah Sulayman**

Cloud DevOps Engineer | Azure | Kubernetes | CI/CD

GitHub: https://github.com/rahimahisah17

Live Project: https://rahimahisah17.github.io/pipeit-tutorial/
