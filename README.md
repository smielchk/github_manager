# GitHub Manager (DevOps Mode)
AI-powered tool for sync and deployment.

## Setup
1. Copy `config.yaml.example` to `config.yaml`
2. Run `pip install -r requirements.txt`
3. Start: `python3 main.py`

## 🐳 Docker Deployment
- Build: `docker build -t github-manager .`
- Run: `docker run --env-file .env github-manager`

## 🛠️ CI/CD
- GitHub Actions automatically runs on every push to `master`.
