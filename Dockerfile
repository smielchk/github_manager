# 使用轻量级 Python 镜像
FROM python:3.11-slim

WORKDIR /app

# 安装 Git 和必要的工具
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# 默认运行主程序
CMD ["python", "main.py"]
