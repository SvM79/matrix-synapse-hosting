# 🔐 Security Hardening Overview

## Configuration

- Rate limiting enabled
- Registration token required
- Federation domain whitelist empty by default

## Hardening Tools

- Fail2Ban active for SSH brute force protection
- Lynis audit planned
- TLS certificates managed via Let's Encrypt

## Threat Model: STRIDE

| Category | Example Threat | Mitigation |
|----------|----------------|------------|
| Spoofing | Impersonation via fake server | TLS pinning, federation validation |
| Tampering | Modified config or DB | File permissions, Git audit trail |
| Repudiation | No logs of federation attempts | Enable federation logging |
