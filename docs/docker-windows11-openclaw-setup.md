# Docker Desktop + OpenClaw Setup on Windows 11

## 1. Enable WSL2

Open PowerShell as Administrator:

```powershell
wsl --install
```

Reboot Windows.

Update WSL:

```powershell
wsl --update
```

Verify:

```powershell
wsl -l -v
```

---

## 2. Install Docker Desktop

Download:

https://www.docker.com/products/docker-desktop/

During installation:

- Enable WSL2 backend
- Enable integration with Ubuntu/WSL

Verify:

```powershell
docker --version
docker compose version
```

---

## 3. Clone AI Hybrid Stack

```powershell
git clone https://github.com/trunghieuvtth/ai-hybrid-stack.git

cd ai-hybrid-stack
```

---

## 4. Create .env

Create `.env` file:

```env
OPENAI_API_KEY=YOUR_API_KEY
OPENAI_BASE_URL=http://103.106.222.145:443/v1
MODEL_NAME=gpt-oss-120b
```

---

## 5. Start AI Stack

```powershell
docker compose up -d
```

Verify containers:

```powershell
docker ps
```

---

## 6. Open Web Interfaces

| Service | URL |
|---|---|
| Open WebUI | http://localhost:3000 |
| n8n | http://localhost:5678 |
| LiteLLM | http://localhost:4000/v1/models |
| Qdrant | http://localhost:6333 |

---

# OpenClaw Docker Setup

## 1. Create OpenClaw folder

```powershell
mkdir D:\OpenClaw
cd D:\OpenClaw
```

---

## 2. Create docker-compose.yml

```yaml
services:

  openclaw:
    image: ghcr.io/cyberagiinc/openclaw:latest
    container_name: openclaw

    ports:
      - "8088:8080"

    environment:
      OPENAI_API_BASE: http://host.docker.internal:4000/v1
      OPENAI_API_KEY: dummy
      MODEL_NAME: gpt-oss-120b

    restart: unless-stopped
```

---

## 3. Start OpenClaw

```powershell
docker compose up -d
```

---

## 4. Access OpenClaw

http://localhost:8088

---

# Production Architecture

```text
Telegram
    ↓
OpenClaw
    ↓
LiteLLM
    ↓
GPT-OSS-120B
```
