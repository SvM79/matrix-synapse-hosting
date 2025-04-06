# 🧱 Matrix-Synapse Hosting on Synology

This repository documents a self-hosted Matrix-Synapse deployment on a Synology NAS, designed for secure, federated communication using Docker, Git-based deployment, and a CI/CD-assisted development workflow.

---

## 🌐 Project Goals

- Enable secure Matrix federation for private and trusted peers
- Self-host Matrix-Synapse on Synology DS224+ using Docker
- Use local development (WSL) for safe, testable configuration
- Mirror reusable code and docs to GitHub without exposing secrets
- Apply devops practices like Git workflows, CI/CD, and infrastructure-as-code

---

## 🔁 Development & Deployment Flow

This project uses a structured Git-based deployment model involving three environments:

| Role          | Environment          | Purpose                                  |
|---------------|----------------------|------------------------------------------|
| 🧩 Production  | Synology NAS         | Hosts live Matrix-Synapse container and persistent volume |
| 💻 Development | WSL (Ubuntu on Windows) | Safe local editing, Git commits, file sync |
| ☁️ Backup/CI   | GitHub               | Mirrors templates, documentation, and automation — no secrets |

### 🧠 Why This Architecture?

> This flow provides the right balance of privacy, traceability, and professional devops practices:
>
> - **Synology** stores sensitive configs and secrets but is isolated from public access.
> - **WSL** enables safe local editing without touching the live container.
> - **GitHub** acts as an offsite mirror with CI/CD for linting, scanning, and backup — while exposing only public-safe material.

---

## 📦 What This Repo Contains

- `docs/` — Federation architecture, trust model, and security hardening
- `templates/` — Redacted `homeserver.yaml`, Docker Compose, `.env` examples
- `scripts/` — Automation hooks (e.g., deploy on push, health checks)
- `.github/workflows/` — Linting and secret scanning via GitHub Actions

---

## 📄 License

This project is licensed under the [Apache License 2.0](LICENSE), matching the Matrix Synapse project's license.

---

**Note:** No private keys, production configurations, or secret tokens are stored in this repository.
