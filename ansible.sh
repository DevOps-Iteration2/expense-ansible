component=$1 # see in pipelines
ansible-playbook -i $component-dev.devopsjourney.fun, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e env=dev -e role_name=$component expense.yml