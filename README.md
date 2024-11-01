### **AWS TF repo**
![](https://github.com/kiemazon/sandbox-tf/blob/main/Untitled%20AWS%20Model-11_01_2024%209_22%20PM%20-%20Regular%20Shapesv1.3.png?raw=true)

- pipeline is triggered by gh webhook
- _only tracks changes to **/main**_
- _only **closed PR** will initiate pipeline_

- build stage in pipeline uses gh repo as source
  - uses container image = hashicorp,tf:latest image
  - uses buildspec.yml from repo (runs tf _innit_>_plan_>_apply_)

