package com.novapay.api;

import java.util.Map;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HealthController {

    @GetMapping("/api/health")
    public Map<String, String> health() {
        return Map.of(
            "application", "NovaPay Digital Bank API",
            "status", "UP"
        );
    }

    @GetMapping("/api/v1/info")
    public Map<String, String> info() {
        return Map.of(
            "service", "novapay-api",
            "version", "1.0.0",
            "environment", "local-demo"
        );
    }
}
