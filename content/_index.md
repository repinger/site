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
sdns://AwMAAAAAAAAADjEwMy4xNTcuMjYuMTExIGpQYrDReNVW8WOxOxsPGUNdAliCkcx1WJ3-5usRyNXDFGRucy5yZXBpbmdlci5jb206ODUz
```

### IPv6 stamp
```
sdns://AwMAAAAAAAAAIVsyMDAxOjQ3MDozNjozZmM6MDpmZWVkOmRhZDpiMDU1XSBqUGKw0XjVVvFjsTsbDxlDXQJYgpHMdVid_ubrEcjVwxRkbnMucmVwaW5nZXIuY29tOjg1Mw
```

## DNS over HTTPS/{2,3} (DoH)
Port 443/{tcp,udp}

### Usage
```
https://dns.repinger.com/dns-query
```

### IPv4 stamp
```
sdns://AgMAAAAAAAAADjEwMy4xNTcuMjYuMTExIGpQYrDReNVW8WOxOxsPGUNdAliCkcx1WJ3-5usRyNXDFGRucy5yZXBpbmdlci5jb206NDQzCi9kbnMtcXVlcnk
```

### IPv6 stamp
```
sdns://AgMAAAAAAAAAIVsyMDAxOjQ3MDozNjozZmM6MDpmZWVkOmRhZDpiMDU1XSBqUGKw0XjVVvFjsTsbDxlDXQJYgpHMdVid_ubrEcjVwxBkbnMucmVwaW5nZXIuY29tCi9kbnMtcXVlcnk
```

## DNS over QUIC (DoQ)
Port 853/udp

### Usage
```
quic://dns.repinger.com
```

### IPv4 stamp
```
sdns://BAMAAAAAAAAADjEwMy4xNTcuMjYuMTExIGpQYrDReNVW8WOxOxsPGUNdAliCkcx1WJ3-5usRyNXDFGRucy5yZXBpbmdlci5jb206ODUz
```

### IPv6 stamp
```
sdns://BAMAAAAAAAAAIVsyMDAxOjQ3MDozNjozZmM6MDpmZWVkOmRhZDpiMDU1XSBqUGKw0XjVVvFjsTsbDxlDXQJYgpHMdVid_ubrEcjVwxBkbnMucmVwaW5nZXIuY29t
```

## Why no *plain* DNS?

Mainly due to [transparent DNS proxies](https://dnsleaktest.com/what-is-transparent-dns-proxy.html); a simple trick that will workaround the issue is to change the serving-port other than 53/{tcp,udp}.

Even with the aforementioned workaround, incoming and outcoming DNS queries are **still unencrypted** and anyone with the ability can see what you're up to effortlessly. Sending unencrypted queries to a third-party DNS service defeats the whole purpose of secure DNS.
