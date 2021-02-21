# LuaStakkyStaticSimpleAppTemplate

This template writed for [LuaStakky](https://github.com/LuaStakky/LuaStakky) project.

## What include in this template?

* Trivial tarantool app.
* Serving static from `WebData\`.

## For deploy use:

`./prod-run.sh up --build`

*or*

`./dev-run.sh up --build`

## for ssl:

1. Write CERTIFICATE and PRIVATE KEY into `Certificates` file
2. Rewrite security section in `stakky.yaml` like this:

        security:
          allow_http: false
          allow_https: true
          ssl_certificates_file: Certificates
          ssl_session_cache: 10
