# 🔐 Matrix-Synapse Hardening Checklist (Synology + Docker)

This checklist adapts general Linux and Docker security best practices for a Synology NAS hosting Matrix-Synapse in a Docker container.

---

## ✅ Deployment Hardening

- [ ] Use official `matrixdotorg/synapse` image with pinned version
- [ ] Map only required ports (8448 for federation, 8008 internal)
- [ ] Avoid `--privileged` or unnecessary capabilities
- [ ] Enable Docker user namespace remapping (if supported in DSM)
- [ ] Set container memory/CPU limits
- [ ] Disable container restart on failure during debug phase

---

## ✅ Federation Endpoint Security

- [ ] Use HTTPS with valid TLS cert (Let’s Encrypt)
- [ ] Serve `.well-known/matrix/server` via Synology Web Station or Nginx container
- [ ] Verify `.well-known` returns correct `m.server` value
- [ ] Run federation tester: https://federationtester.matrix.org/

---

## ✅ Synapse Configuration

- [ ] Enable `registration_shared_secret` or disable registration
- [ ] Set `federation_domain_whitelist` if restricting federation peers
- [ ] Use long, rotated `macaroon_secret_key` and `signing_key`
- [ ] Disable presence features if unused
- [ ] Enable rate limiting

---

## ✅ Host-Level Synology Settings

- [ ] Keep DSM and Docker package updated
- [ ] Enable 2FA for DSM admin accounts
- [ ] Disable default admin user
- [ ] Use Synology’s **Auto Block** or **Firewall** for port brute force protection
- [ ] Limit external access to ports 8448 and 443 only

---

## ✅ Git-Based Integrity and Deployment

- [ ] Store only redacted configs and scripts in GitHub (no secrets)
- [ ] Add `.gitignore` to protect local sensitive files
- [ ] Use Git post-receive hook to deploy config to Synology container
- [ ] Use Gitleaks or GitHub Actions to scan for secrets

---

## ✅ Optional: WSL/VM Companion Tools

- [ ] Run `Lynis` or `CIS benchmarks` in a local VM to simulate production audit
- [ ] Explore file integrity tools like `aide` in Linux VM if full host audit is needed

---

## 🧭 Roadmap (Planned)

- [ ] Add logging and alerting for unusual federation/auth events
- [ ] Test and limit rate of federation requests
- [ ] Deploy fail2ban in parallel or use Synology logs to detect login attempts

