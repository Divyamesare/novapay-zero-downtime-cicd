# Container Security Scan

- Project: NovaPay Zero-Downtime CI/CD Platform
- Scanner: Trivy 0.75.0
- Scan scope: Operating-system packages only
- Detected OS: Ubuntu 26.04
- HIGH findings: 2 package entries associated with one CVE
- CRITICAL findings: 0
- CVE: CVE-2026-92392
- Affected packages: curl, libcurl4t64
- Installed version: 8.18.0-1ubuntu2.7
- Reported fixed version: 8.18.0-1ubuntu2.8
- Status: Remediation pending; rescan required

Note: This scan covers OS packages only. It does not establish that Java dependencies or the entire container image are vulnerability-free.
