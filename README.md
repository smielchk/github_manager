# DevOps Agent (GitHub Manager) 🦉

An AI-powered end-to-end DevOps automation skill and toolkit. Designed to bring intelligence to your daily development loop: from environment setup and secret scrubbing, to semantic commits and complex deployment.

## ✨ Core Features

1. **AI-Driven Git Ops**: Automatically analyzes your `git diff` and generates clean, semantic commit messages.
2. **Built-in Security Scrub**: Runs a pre-flight scan (`scripts/safety_scrub.py`) to detect hardcoded secrets and forces them into `.env` before any commit.
3. **AI-IDE Integration**: Seamlessly works with `opencode-ai` for complex code refactoring and feature implementation.
4. **Self-Healing Environment**: Automatically detects missing dependencies (like `uv`, `pytest`, `docker`) and guides you to fix them.
5. **LLM Agnostic**: Supports OpenAI and seamless integration with domestic LLMs (e.g., Aliyun Bailian / Qwen).

## 🧠 For AI Agents (The Brain)
If you are an AI Agent (like OpenClaw), your primary instruction manual is **[`SKILL.md`](SKILL.md)**. Read it to understand your identity, boundaries, and how to execute smart sync operations.

## 🚀 Setup & Usage (Modern Workflow)

We strongly recommend using **[uv](https://github.com/astral-sh/uv)** for lightning-fast Python dependency management.

1. **Clone & Configure**:
   ```bash
   git clone https://github.com/smielchk/devops-agent.git
   cd devops-agent
   cp config.yaml.example config.yaml
   ```

2. **Install Dependencies (via uv)**:
   ```bash
   uv venv
   uv pip install -r requirements.txt
   ```

3. **Run Smart Sync**:
   This will run safety checks, stage changes, generate a semantic commit message, and push to `master`.
   ```bash
   uv run main.py
   ```

## 🧪 Pre-flight Checks (Testing)
Ensure your code is solid before pushing:
```bash
uv run pytest
```

## 🐳 Docker Deployment
- Build: `docker build -t devops-agent .`
- Run: `docker run --env-file .env devops-agent`

## 🇨🇳 国产大模型适配 (Aliyun Bailian / Qwen)

The DevOps Agent supports seamless integration with domestic LLMs like Aliyun Bailian (Qwen).

### Configuration Example
Add your Aliyun credentials to your `.env`:
```env
ALIYUN_BAILIAN_API_KEY=your_sk_here
OPENAI_BASE_URL=https://dashscope.aliyuncs.com/compatible-mode/v1
```