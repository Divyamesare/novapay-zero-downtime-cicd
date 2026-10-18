# NovaPay Container Security Scan

## Scan Status

- Image: `novapay-api:1.0.2`
- Base OS identified in the existing report: Ubuntu 26.04
- Scanner: Trivy 0.75.0
- Intended scan scope: Container image vulnerability scanning
- Current status: **Inconclusive — scan timed out**
- HIGH vulnerabilities: Not confirmed
- CRITICAL vulnerabilities: Not confirmed

## Scan Details and Limitations

The existing JSON report identifies 140 operating-system packages. However, the report does not contain vulnerability details that can be used to confirm the HIGH or CRITICAL vulnerability counts.

A subsequent scan attempt downloaded the Trivy vulnerability databases but failed during image-layer analysis with `context deadline exceeded`. Therefore, the security status of image `novapay-api:1.0.2` remains unverified.

This document does not claim that the image is free of HIGH or CRITICAL vulnerabilities. A successful scan is required to establish the findings. Java dependency coverage must also be verified from the results before claiming that application dependencies were assessed.

## Evidence

- Existing JSON report: `trivy-os-report-1.0.2.json`
- Backup JSON report: `trivy-os-report-1.0.2-backup.json` (historical evidence; vulnerability details unavailable)
- Image archive used for the scan attempt: `novapay-image-1.0.2.tar` (local evidence; not intended for Git tracking)
- Scan outcome: `context deadline exceeded` during image-layer analysis
