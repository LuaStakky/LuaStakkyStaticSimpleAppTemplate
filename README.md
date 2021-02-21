# LuaStakkyStaticTemplate

This template writed for [LuaStakky](https://github.com/LuaStakky/LuaStakky) project.

**!When creating new project don't remember change salt in `TarantoolApp\Users\crypto.lua` to random string!**

## What include in this template?

* Advanced build system.
* Users module example.
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
      
## default user:

email: examlpe@examlpe.com
password: toor

for configurate see `TarantoolApp\Users\_private\init.lua`
