### Terraform AWS repo
runs (innit > plan > apply) in sandbox account.

triggered by gh webhook\\
**only** tracks changes to main repo\
**only** closed PR will initiate pipeline.\
Codebuild build container uses official hashicorp tf :latest image with repo as source.
