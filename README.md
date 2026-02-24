# DevOps Agent Skill 🦉

An AI-powered end-to-end DevOps automation **Skill** designed specifically for AI Agents (like OpenClaw). It acts as the "Brain" and "Hands" for managing a local software project lifecycle: from environment setup and secret scrubbing, to semantic commits and complex deployments.

## ✨ Core Features

1. **AI-Driven Git Ops**: The Agent automatically analyzes `git diff` and generates clean, semantic commit messages based on standard conventions.
2. **Built-in Security Scrub**: Enforces a strict pre-flight scan (`scripts/safety_scrub.py`) to detect hardcoded secrets and force them into `.env` before any commit.
3. **AI-IDE Integration**: Seamlessly spawns `opencode` for complex code refactoring, feature implementation, and codebase analysis.
4. **Self-Healing Environment**: Automatically detects missing dependencies (like `uv`, `pytest`, `docker`) in the target project and guides the user to fix them.

## 🧠 For AI Agents (The Brain)
If you are an AI Agent, your primary instruction manual is **[`SKILL.md`](SKILL.md)**. Read it to understand your identity, boundaries, and how to execute smart sync operations.

## 🚀 How to Install (For Humans)

Since this is purely an Agent Skill (not a standalone app), installation is just about making it accessible to your AI platform.

**For OpenClaw:**
1. Clone this repository into your workspace or skills folder.
   ```bash
   git clone https://github.com/smielchk/devops-agent.git
   ```
2. Link it to OpenClaw's skill registry:
   ```bash
   ln -s $(pwd)/devops-agent ~/.npm-global/lib/node_modules/openclaw/skills/devops-agent
   ```
3. That's it! There are no Python packages or Docker containers to build. The Agent executes native commands (like `git` and `python3`) directly using the `SKILL.md` instructions.

## 📁 Repository Structure
- `SKILL.md`: The core prompt and operating manual for the AI.
- `scripts/safety_scrub.py`: Zero-dependency secret scanner.
- `reference/`: Best practices (e.g., Git conventions, Opencode prompts) that the AI reads on demand.
