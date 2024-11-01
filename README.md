### **AWS TF repo**
![](https://private-user-images.githubusercontent.com/159982411/382423944-399e9abe-cdaf-487b-b076-d958ee3f4a1f.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MzA1MDMwMjEsIm5iZiI6MTczMDUwMjcyMSwicGF0aCI6Ii8xNTk5ODI0MTEvMzgyNDIzOTQ0LTM5OWU5YWJlLWNkYWYtNDg3Yi1iMDc2LWQ5NThlZTNmNGExZi5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjQxMTAxJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI0MTEwMVQyMzEyMDFaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT0zMWFmODNjZWNhMzAyN2Q0YWNhZjI4OWQxZmFlNGNjM2QyOTM5MGE2NjRiNDI0NWIzNzJlZTdjOTI2MDE2YTViJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.bAW8A-EjF-o1Vg3EGX9a_e_lQhDmjF_pTHku5dgUMck)

- pipeline is triggered by gh webhook
- _only tracks changes to **/main**_
- _only **closed PR** will initiate pipeline_

- build stage in pipeline uses gh repo as source
  - uses container image = hashicorp,tf:latest image
  - uses buildspec.yml from repo (runs tf _innit_>_plan_>_apply_)

