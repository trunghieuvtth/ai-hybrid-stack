# ai-hybrid-stack
OpenClaw Codex Claude
# AI Hybrid Stack

Enterprise-grade AI Hybrid Platform chạy trên Docker dành cho:

* AI Agents
* Multi-model AI Routing
* RAG
* Automation
* AI Knowledge Systems
* Government/Enterprise AI
* AI Coding Assistant
* AI Media Automation

---

# Kiến trúc tổng thể

```text
Windows 11
    ↓
Docker Desktop
    ↓
AI Stack
 ├── LiteLLM
 ├── Open WebUI
 ├── OpenClaw
 ├── n8n
 ├── Qdrant
 ├── PostgreSQL
 ├── Redis
 └── MCP Servers
```

---

# AI Models hỗ trợ

* GPT-OSS-120B
* OpenAI
* Claude
* DeepSeek
* Perplexity
* Grok/xAI
* Gemini

---

# Thành phần chính

| Thành phần | Vai trò              |
| ---------- | -------------------- |
| LiteLLM    | AI Gateway & Routing |
| Open WebUI | AI Chat Interface    |
| OpenClaw   | AI Agent Runtime     |
| n8n        | Workflow Automation  |
| Qdrant     | Vector Database      |
| PostgreSQL | Metadata & Analytics |
| Redis      | Queue & Cache        |
| MCP        | AI Tool Execution    |

---

# Yêu cầu hệ thống

## Windows 11

Khuyến nghị:

* RAM: 16GB+
* SSD: 100GB trống
* Docker Desktop
* WSL2 enabled

---

# Bước 1 — Cài Docker Desktop

Tải:

https://www.docker.com/products/docker-desktop/

Sau khi cài:

* bật WSL2 backend
* restart Windows

---

# Bước 2 — Clone Repository

```powershell
git clone https://github.com/trunghieuvtth/ai-hybrid-stack.git

cd ai-hybrid-stack
```

---

# Bước 3 — Tạo file .env

Copy:

```powershell
copy .env.example .env
```

---

# Bước 4 — Cấu hình AI Providers

Ví dụ:

```env
OPENAI_API_KEY=
OPENAI_BASE_URL=http://103.106.222.145:443/v1
MODEL_NAME=gpt-oss-120b

CLAUDE_API_KEY=
OPENAI_CLOUD_API_KEY=
DEEPSEEK_API_KEY=
PERPLEXITY_API_KEY=
GROK_API_KEY=
GEMINI_API_KEY=
```

---

# Bước 5 — Chạy Bootstrap Installer

```powershell
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

Script sẽ tự:

* kiểm tra Docker
* kiểm tra WSL2
* pull images
* tạo containers
* start services
* verify endpoints

---

# Sau khi chạy

| Service    | URL                   |
| ---------- | --------------------- |
| Open WebUI | http://localhost:3000 |
| LiteLLM    | http://localhost:4000 |
| n8n        | http://localhost:5678 |
| Qdrant     | http://localhost:6333 |
| OpenClaw   | http://localhost:8088 |

---

# MCP Architecture

MCP servers:

* Filesystem MCP
* Docker MCP
* GitHub MCP
* PostgreSQL MCP
* Qdrant MCP

---

# Telegram Integration

Hỗ trợ:

* AI approvals
* AI notifications
* AI workflows
* remote AI control

---

# RAG Pipeline

```text
Documents
    ↓
Chunking
    ↓
Embeddings
    ↓
Qdrant
    ↓
AI Retrieval
```

---

# Security

Khuyến nghị:

* ưu tiên local/private models
* không gửi dữ liệu nội bộ lên public APIs
* bật RBAC
* bật audit logs
* backup volumes định kỳ

---

# Production Roadmap

## Phase 1

Core AI Stack

## Phase 2

OpenClaw + MCP

## Phase 3

RAG + SmartHub

## Phase 4

AI Automation

## Phase 5

Enterprise AI Agents

```
```
