#!/bin/bash

# script exports your AWS Key Name, AWS Named Profile, and AWS Account Name
# if you choose to not run (source) this script you will be prompted for these 
# variables when running terraform

#TF_VAR_aws_account="aws-ids-main"
#TF_VAR_aws_named_profile="aws-ids-main"
TF_VAR_aws_account="aws-ncaa-nonprod"
TF_VAR_aws_named_profile="aws-ncaa-nonprod:aws-ncaa-nonprod-dba"

echo "Setting TF_VAR's to:"
echo $TF_VAR_aws_account $TF_VAR_aws_named_profile
export TF_VAR_aws_account TF_VAR_aws_named_profile
