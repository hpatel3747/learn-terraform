## learn-terraform
```text
IaC - infrastructure as code developed by Hashicorp
Another iac tool is pulumi, crossplane, Ansible (ansible can do IaC up to some extent)
terraform now acquired by IBM
there are guys in the selling terraform code e.g OpenTofu, gruntwork
Devlopment takes time but deploying in prod is much faster
```
### SOP (standard operating procedure)
```text
1. Any change in OS should be done through Ansible
2. Any infra creation should be done through Terraform
```
### prepare workstation for terraform deployment
```text
Workstation will be used to provision EC2 instance
e.g
login to workstation
$ aws ec2 describe-instances
you will get unable to describe message
we need to provide access to workstation directly
create role WorkstationRole assign 'AdministratorAccess' policy (in aws assigning policy is assigning permission)
Go to workstation | right click  | security | modify IAM role | assign workstationrole |
login to workstation
$ aws ec2 describe-instances
you should see the output
now workstation is ready to execute terraform code to provision infrastructure
note that any user login to workstation can do the infra provision, so maintain security of this workstation
```
### Hashicorp
- HCL - hashicorp configuration language, provided by hashicorp
- written in blocks, e.g resource, variable, output, data, local, module, provider
e.g
```text
resource "abc" xyz {
    x = 10
    y = 20
}

terraform files written as .tf
```
### how to run terraform code


### Install terraform on workstation

#### add hashicorp repo
```text
sudo curl -L -o /etc/yum.repos.d/hashicorp.repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
```
#### install terraform
```text
sudo yum -y install terraform
```
#### run terraform initialize
```text
git pull
cd roboshop-v1/
terraform init
```
#### run terraform plan, will show what it is planning to run
```text
terraform plan
```
#### apply terraform, will apply terraform code to create instance
```text
terraform apply
```
#### conditions in terraform
1. condition ? true_val : false_val
2. 


