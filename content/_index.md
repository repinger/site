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
sdns://AwMAAAAAAAAADDQzLjIxOC40Ny4xMCBqUGKw0XjVVvFjsTsbDxlDXQJYgpHMdVid_ubrEcjVwxZkbnMucmVwaW5nZXIubXkuaWQ6ODUz
```

## DNS over HTTPS/{2,3} (DoH)
Port 443/{tcp,udp}

### Usage
```
https://dns.repinger.my.id/dns-query
```

### IPv4 stamp
```
sdns://AgMAAAAAAAAADDQzLjIxOC40Ny4xMCBqUGKw0XjVVvFjsTsbDxlDXQJYgpHMdVid_ubrEcjVwxZkbnMucmVwaW5nZXIubXkuaWQ6NDQzCi9kbnMtcXVlcnk
```

## DNS over QUIC (DoQ)
Port 853/udp

### Usage
```
quic://dns.repinger.my.id
```

### IPv4 stamp
```
sdns://BAMAAAAAAAAADDQzLjIxOC40Ny4xMCBqUGKw0XjVVvFjsTsbDxlDXQJYgpHMdVid_ubrEcjVwxZkbnMucmVwaW5nZXIubXkuaWQ6ODUz
```

## Why no *plain* DNS?

Mainly due to [transparent DNS proxies](https://dnsleaktest.com/what-is-transparent-dns-proxy.html); a simple trick that will workaround the issue is to change the serving-port other than 53/{tcp,udp}.

Even with the aforementioned workaround, incoming and outcoming DNS queries are **still unencrypted** and anyone with the ability can snoop right in effortlessly. Sending unencrypted queries to a third-party DNS service defeats the whole purpose of secure DNS.
