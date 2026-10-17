# NovaPay Blue-Green Deployment and Rollback

## Components
- Previous container: novapay-blue-101, port 8087
- New container: novapay-verify-102, port 8086
- Nginx proxy: novapay-proxy, port 8088

## Verification
- Health: Invoke-RestMethod http://localhost:8088/api/health
- Version: Invoke-RestMethod http://localhost:8088/api/v1/info

## Traffic switching
Set proxy_pass in deploy/nginx.conf to http://host.docker.internal:8086 for the new version, or port 8087 for the previous version.
Reload Nginx with: docker exec novapay-proxy nginx -s reload

## Test results
- Proxy to port 8086 returned version 1.0.2 and health UP.
- Proxy to port 8087 returned application version 1.0.0 and health UP.
- Switched back to port 8086; version 1.0.2 and health UP.

## Limitation
Proxy switching and rollback were verified. Continuous request testing during switching has not been performed, so uninterrupted zero downtime is not yet proven.
