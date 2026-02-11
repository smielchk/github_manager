---
name: devops
description: "End-to-end project management: environment setup, AI-powered smart sync, and complex deployment (Docker/uv) with README-first intelligence."
metadata:
  {
    "openclaw":
      {
        "emoji": "🛠️",
        "requires": { "bins": ["gh", "git"] },
        "install":
          [
            {
              "id": "apt",
              "kind": "apt",
              "package": "gh git docker.io",
              "bins": ["gh", "git", "docker"],
              "label": "Install DevOps Toolchain (apt)",
            },
          ],
      },
  }
---

# DevOps Agent Skill (formerly GitHub Advanced)

## 1. Environment & Identity (Self-Healing)
- **Identity Check**: If `git config user.name` is missing, ask the user before the first commit.
- **Auth**: Guide through `gh auth login` if `gh auth status` fails.
- **Modern Tools**: Check for `uv`, `docker`, or `npm` based on project context.

## 2. Deployment Intelligence (README-First)
**CRITICAL**: Before running or deploying any project, ALWAYS read `README.md` to identify:
- **Environment Management**: Does it use `uv`, `poetry`, `venv`, or `npm`?
- **Configuration**: Are `.env`, `config.yaml`, or `secrets.json` required?
- **Containerization**: Is there a `Dockerfile` or `docker-compose.yml`?
- **Run Commands**: Identify the specific start scripts (e.g., `uv run`, `docker-compose up`).

## 3. Smart Sync (AI-Powered)
- **Analysis**: Use `git diff --cached` and AI to generate semantic commit messages.
- **Workflow**: Automated `git add` -> `AI commit` -> `git push`.

## 4. Maintenance & Operations
- **Discovery**: `git log --oneline --graph`, `git status -sb`.
- **Sync**: `git pull --rebase origin $(git branch --show-current)`.
- **CI Status**: `gh run list` and `gh run view --log-failed`.

## 5. Troubleshooting
- **Missing Config**: If a `.env` or `config.yaml` is mentioned in README but missing, alert the user immediately.
- **Auth Failure**: Provide the exact `gh auth login` command.
