#terraform
Setup terraform on AWS
##Pre-requisite
docker
aws vault
iam

Steps
install terraform
aws cli configured
git clone terraform-provider-aws
cd terraform
git checkout v2.51.0
code .
terraform init

install aws-iam-authenticator
chmod
sudo mv aws-iam-authenticator

kubectl run nginx --image nginx
