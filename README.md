### Terraform AWS repo
Runs (innit > plan > apply) in sandbox account.

Triggered by gh webhook\\
**only** tracks changes to main repo\
**only** closed PR will initiate pipeline.\
Codebuild build container uses official hashicorp tf :latest image with repo as source.
