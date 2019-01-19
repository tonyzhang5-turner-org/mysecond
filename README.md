# nba-dalton Terraform

  Creates the infrastructure needed to run nba-dalton
  site and services - An Argo Deployment

## Dual Region !!!
  NBA Dalton QA and PROD are dual region (Primary:Virginia & Secondary:Atlanta-on-prem).

  You should only need to use varInitScript.sh.  On-Prem is running in Openstack with Stratos Load Balancers.

  Be sure to use the correct ENV VAR init script for the region you wish to modify.

## Requirements
  Terraform Version 0.10.0 or higher.

## Structure
  Tomcat services are "clustered" with two products per 
  terraform group to minimize cross-product disruption.
  Not all products/envs are listed below (for clarity)

 - dev
 - dev/admin-billing
 - dev/core-freepreview
 - dev/hub
 - dev/mq
 - dev/preferences-streamaccess
 - qa/admin-billing
 - qa/amazonrvs
 - qa/core-freepreview
 - qa/hub
 - qa/mq
 - qa/preferences-streamaccess

## Instructions

```sh
vi varInitScript-us-east-1.sh # modify per user/account
source varInitScript-us-east-1.sh # will be prompted for user/account/profile if this isn't run
cd qa/us-east-1/hub
terraform init
terraform get -update=true
terraform plan
terraform apply
```

## Checkout mss-terraform-utilities
  Checkout utility repo and add location to your PATH

  https://github.com/turnercode/terraform/tree/master/utils

## Get IPs
  Run 'get-aws-ips' to obtain all instance ipaddresses from any
  deployed auto scale groups or instances
```sh
cd <ENVIRONMENT>
get-aws-ips
```
# mysecond
# mysecond
