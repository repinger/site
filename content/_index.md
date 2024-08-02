---
menu: "main"
weight: 1
---

# Private, encrypted, and secure DNS

Yet another ad/tracker/malware-blocking, no-log, and free public DNS with over one million malicious domains blocked.


## DNS over TLS (DoT)
Port 853/tcp

### Usage
```
tls://dns.repinger.com / dns.repinger.com
```

### IPv4 stamp
```
sdns://AwMAAAAAAAAADjEwMy4yMzUuNzMuMjQ0IGpQYrDReNVW8WOxOxsPGUNdAliCkcx1WJ3-5usRyNXDFGRucy5yZXBpbmdlci5jb206ODUz
```

### IPv6 stamp
```
sdns://AwMAAAAAAAAAFFsyMDAxOjQ3MDozNToyY2Q6OjJdIGpQYrDReNVW8WOxOxsPGUNdAliCkcx1WJ3-5usRyNXDFGRucy5yZXBpbmdlci5jb206ODUz
```

## DNS over HTTPS/{2,3} (DoH)
Port 443/{tcp,udp}

### Usage
```
https://dns.repinger.com/dns-query
```

### IPv4 stamp
```
sdns://AgMAAAAAAAAADjEwMy4yMzUuNzMuMjQ0IGpQYrDReNVW8WOxOxsPGUNdAliCkcx1WJ3-5usRyNXDFGRucy5yZXBpbmdlci5jb206NDQzCi9kbnMtcXVlcnk
```

### IPv6 stamp
```
sdns://AgMAAAAAAAAAFFsyMDAxOjQ3MDozNToyY2Q6OjJdIGpQYrDReNVW8WOxOxsPGUNdAliCkcx1WJ3-5usRyNXDEGRucy5yZXBpbmdlci5jb20KL2Rucy1xdWVyeQ
```

## DNS over QUIC (DoQ)
Port 853/udp

### Usage
```
quic://dns.repinger.com
```

### IPv4 stamp
```
sdns://BAMAAAAAAAAADjEwMy4yMzUuNzMuMjQ0IGpQYrDReNVW8WOxOxsPGUNdAliCkcx1WJ3-5usRyNXDFGRucy5yZXBpbmdlci5jb206ODUz
```

### IPv6 stamp
```
sdns://BAMAAAAAAAAAFFsyMDAxOjQ3MDozNToyY2Q6OjJdIGpQYrDReNVW8WOxOxsPGUNdAliCkcx1WJ3-5usRyNXDEGRucy5yZXBpbmdlci5jb20
```

## Why no *plain* DNS?

Mainly due to [transparent DNS proxies](https://dnsleaktest.com/what-is-transparent-dns-proxy.html); a simple trick that will workaround the issue is to change the serving-port other than 53/{tcp,udp}.

Even with the aforementioned workaround, incoming and outcoming DNS queries are **still unencrypted** and anyone with the ability can snoop right in effortlessly. Sending unencrypted queries to a third-party DNS service defeats the whole purpose of secure DNS.
