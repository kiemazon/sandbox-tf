### **Terraform AWS repo**

- triggered by gh webhook
- _only tracks changes to **/main**_
- _only **closed PR** will initiate pipeline_
- codebuild container image = hashicorp,tf:latest image
- runs tf _innit_>_plan_>_apply_
