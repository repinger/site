---
menu: "main"
weight: 1
---

# Private, encrypted, and secure DNS

Yet another ad/tracker/malware-blocking (over one million domains blocked), no-logs, and free public DNS.


## DNS over TLS (DoT)
Port 853/tcp

### Usage
```
tls://dns.repinger.my.id / dns.repinger.my.id
```

### IPv4 stamp
```
sdns://AwMAAAAAAAAADjQ1LjE0OS4xODcuMTY3IGpQYrDReNVW8WOxOxsPGUNdAliCkcx1WJ3-5usRyNXDEmRucy5yZXBpbmdlci5teS5pZA
```

### IPv6 stamp
```
sdns://AwMAAAAAAAAAHVsyNDA3OjZhYzA6MjoyOjE6MTo0N2Y2OjE2YmRdIGpQYrDReNVW8WOxOxsPGUNdAliCkcx1WJ3-5usRyNXDEmRucy5yZXBpbmdlci5teS5pZA
```

## DNS over HTTPS (DoH)
Port 443/tcp

### Usage
```
https://dns.repinger.my.id/dns-query
```

### IPv4 stamp
```
sdns://AgMAAAAAAAAADjQ1LjE0OS4xODcuMTY3IGpQYrDReNVW8WOxOxsPGUNdAliCkcx1WJ3-5usRyNXDEmRucy5yZXBpbmdlci5teS5pZAovZG5zLXF1ZXJ5
```

### IPv6 stamp
```
sdns://AgMAAAAAAAAAHVsyNDA3OjZhYzA6MjoyOjE6MTo0N2Y2OjE2YmRdIGpQYrDReNVW8WOxOxsPGUNdAliCkcx1WJ3-5usRyNXDEmRucy5yZXBpbmdlci5teS5pZAovZG5zLXF1ZXJ5
```

## DNS over QUIC (DoQ)
Port 853/udp

### Usage
```
quic://dns.repinger.my.id
```

### IPv4 stamp
```
sdns://BAMAAAAAAAAADjQ1LjE0OS4xODcuMTY3IGpQYrDReNVW8WOxOxsPGUNdAliCkcx1WJ3-5usRyNXDEmRucy5yZXBpbmdlci5teS5pZA
```

### IPv6 stamp
```
sdns://BAMAAAAAAAAAHVsyNDA3OjZhYzA6MjoyOjE6MTo0N2Y2OjE2YmRdIGpQYrDReNVW8WOxOxsPGUNdAliCkcx1WJ3-5usRyNXDEmRucy5yZXBpbmdlci5teS5pZA
```

## Why no *plain* DNS?

Mainly due to [transparent DNS proxies](https://dnsleaktest.com/what-is-transparent-dns-proxy.html); a simple trick that will workaround the issue is to change the serving-port other than 53/{tcp,udp}.

Even with the aforementioned workaround, incoming and outcoming DNS queries are **still unencrypted** and anyone with the ability can snoop right in effortlessly. Sending unencrypted queries to a third-party DNS service defeats the whole purpose of secure DNS.
