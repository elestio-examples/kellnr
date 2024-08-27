# Kellnr CI/CD pipeline

<a href="https://dash.elest.io/deploy?source=cicd&social=dockerCompose&url=https://github.com/elestio-examples/kellnr"><img src="deploy-on-elestio.png" alt="Deploy on Elest.io" width="180px" /></a>

Deploy Kellnr with CI/CD on Elestio

<img src="kellnr.png" style='width: 30%;'/>
<br/>
<br/>

# Once deployed ...

You can open Kellnr Registry here:

    URL: https://[CI_CD_DOMAIN]
    login: admin
    password: [ADMIN_PASSWORD]

## Configuring Cargo

To pull and publish to the Kellnr registry, you need to configure the `.cargo/config.toml` file.

    [registries.kellnr]
    index = "sparse+https://[CI_CD_DOMAIN]/api/v1/crates/"
    credential-provider = ["cargo:token"]
    token = "[ADMIN_PASSWORD]"


## Documentation

- [Configure Cargo Globally](https://kellnr.io/documentation#global-config)
- [Configure Cargo Per Project](https://kellnr.io/documentation#per-proj-config)
- [Pull & Publish to kellnr](https://kellnr.io/documentation#pull-publish-to-kellnr)
- For more information you can follow the [Official Documentation](https://kellnr.io/documentation)