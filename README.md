# WordPress 4.6 PHPMailer Host Header RCE (PwnScriptum)

[Vulhub](https://vulhub.org)'s [`wordpress/pwnscriptum`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/wordpress/pwnscriptum) environment, by
phith0n and the Vulhub contributors: WordPress 4.6, whose password reset mail is sent by PHPMailer with a sender built from the Host header, which reaches Exim's command line and runs commands. This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machines, and
the machines run Vulhub's published image `vulhub/wordpress:4.6` and `mysql:5` with the settings of Vulhub's compose file baked in ([`build/`](build)); the environment folder is vendored in [`app/`](app) and the image's Dockerfile in [`base/`](base).

| Machine | Service |
| --- | --- |
| web | WordPress 4.6 on port 80, published as 8080 |
| mysql | MySQL 5 (internal) |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then open http://localhost:8080/ and finish the WordPress install (Vulhub's guide sets an admin user there; the database is already configured). The exploit targets that user's password reset. The same spec runs as Docker on a local VM (`docker-vm`), on a
cloud VM (`cloud-docker`) or on Kubernetes. Lab guide: Vulhub's
[README](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/wordpress/pwnscriptum/README.md) for this environment, with the walkthrough and references.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

MIT, as Vulhub ([LICENSE](LICENSE)). The vulnerable software inside the image keeps its own licence.
This environment is deliberately vulnerable: keep it isolated.
