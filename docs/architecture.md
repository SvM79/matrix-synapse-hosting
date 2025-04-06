# 🌐 Federation Architecture

## Server Trust Model
- TLS required for all federation (port 8448)
- Certificates issued via Let's Encrypt
- Domain resolves to public IP with optional DNSSEC

## Federation Endpoint
- `https://your.domain.tld:8448/_matrix/federation/v1/version`
- Accessible and testable via: https://federationtester.matrix.org/

## DNS Delegation
- `.well-known/matrix/server` used for domain delegation
- Hosted on root domain with HTTPS
