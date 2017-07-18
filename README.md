# Demo 
It is demo repository with wordpress and ELK stack.

## Prerequisites to run the scripts

1)	Install Ansible with boto module.

    yum install python-pip -y </br>
    yum install ansible </br>
    Pip install boto 

2)	Set AWS access key and secret key in environment variable.
3)	Create a keypair and keep the key in machine home folder. Update this key name and other AWS values in 
    **infra_ec2/plays/variables.yaml** file. 

## Create EC2 machine

1)	cd to infra_ec2 folder and run deploy_infra.sh script.

    cd infra_ec2 </br>
    ./deploy_infra.sh

2)	This will create ec2 machine and related aws resources (vpc, subnet, etc) and write the IP in host file which can be used later to do the deployment.

## Deploy the wordpress

1)	cd to wordpress_app and run the deploy_app.sh script.
    
    Cd wordpress </br>
    ./deploy_app.sh

2)	It will deploy the wordpress app in ec2 machine and app can be accessed from below url. You can get this IP from      
    **infra_ec2/plays/hosts** file.
    
    http://{ec2 machine public IP}

## Deploy the monitoring ELK stack

1)	cd to monitoring_elk and run the deploy_app.sh script.
    
    cd monitoring_elk </br>
    ./deploy_elk.sh

2)	It will deploy the elk stack in ec2 machine and **kibana** dashboard can be accessed from below url.
   
   http://{ec2 machine public IP}:5601
