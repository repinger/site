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
sdns://AwMAAAAAAAAADzIwMy4xOTQuMTEyLjIyOCBETr1nu4P4gHs5Iek4rJF4uIK9UKrbESMfBEz18I33zhJkbnMucmVwaW5nZXIubXkuaWQ
```

### IPv6 stamp
```
sdns://AwMAAAAAAAAAE1syMDAxOmRmMDoyN2I6OjI0MF0gRE69Z7uD-IB7OSHpOKyReLiCvVCq2xEjHwRM9fCN984SZG5zLnJlcGluZ2VyLm15Lmlk
```

## DNS over HTTPS (DoH)
Port 443/tcp

### Usage
```
https://dns.repinger.my.id/dns-query
```

### IPv4 stamp
```
sdns://AgMAAAAAAAAADzIwMy4xOTQuMTEyLjIyOCBETr1nu4P4gHs5Iek4rJF4uIK9UKrbESMfBEz18I33zhJkbnMucmVwaW5nZXIubXkuaWQKL2Rucy1xdWVyeQ
```

### IPv6 stamp
```
sdns://AgMAAAAAAAAAE1syMDAxOmRmMDoyN2I6OjI0MF0gRE69Z7uD-IB7OSHpOKyReLiCvVCq2xEjHwRM9fCN984SZG5zLnJlcGluZ2VyLm15LmlkCi9kbnMtcXVlcnk
```

## DNS over QUIC (DoQ)
Port 853/udp

### Usage
```
quic://dns.repinger.my.id
```

### IPv4 stamp
```
sdns://BAMAAAAAAAAAEzIwMy4xOTQuMTEyLjIyODo4NTMgRE69Z7uD-IB7OSHpOKyReLiCvVCq2xEjHwRM9fCN984SZG5zLnJlcGluZ2VyLm15Lmlk
```

### IPv6 stamp
```
sdns://BAMAAAAAAAAAF1syMDAxOmRmMDoyN2I6OjI0MF06ODUzIEROvWe7g_iAezkh6TiskXi4gr1QqtsRIx8ETPXwjffOEmRucy5yZXBpbmdlci5teS5pZA
```

## Why no *plain* DNS?

Mainly due to [transparent DNS proxies](https://dnsleaktest.com/what-is-transparent-dns-proxy.html); a simple trick that will workaround the issue is to change the serving-port other than 53/{tcp,udp}.

Even with the aforementioned workaround, incoming and outcoming DNS queries are **still unencrypted** and anyone with the ability can snoop right in effortlessly. Sending unencrypted queries to a third-party DNS service defeats the whole purpose of secure DNS.
