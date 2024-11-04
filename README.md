### **AWS TF repo**
![](https://private-user-images.githubusercontent.com/159982411/382423944-399e9abe-cdaf-487b-b076-d958ee3f4a1f.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MzA3NTIzMDMsIm5iZiI6MTczMDc1MjAwMywicGF0aCI6Ii8xNTk5ODI0MTEvMzgyNDIzOTQ0LTM5OWU5YWJlLWNkYWYtNDg3Yi1iMDc2LWQ5NThlZTNmNGExZi5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjQxMTA0JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI0MTEwNFQyMDI2NDNaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT01NDlkOWViZTY1ODVmZGJhNmQ0MjQ1ZDMxNzUwYWQyMDkwNjBhYmFkOTk1MDJlYTMxNjM3MzhmMmI4Yjk4YzJjJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.ua2IdqjDBvIFhO2kvut0YYUt2aTWHBE19xC6C7Qc1a0)

- pipeline is triggered by gh webhook
- _only tracks changes to **/main**_
- _only **closed PR** will initiate pipeline_

- build stage in pipeline uses gh repo as source
  - uses container image = hashicorp,tf:latest image
  - uses buildspec.yml from repo (runs tf _innit_>_plan_>_apply_)

