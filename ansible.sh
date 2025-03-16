component=$1 # see in pipelines

rm -f ~/*.json
ansible-playbook get-secrets.yml -e vault_token=$vault_token  -e env=$env -e role_name=$component
ansible-playbook -i $component-$env.devopsjourney.fun, -e vault_token=$vault_token -e env=$env -e role_name=$component expense.yml -e '@~/secrets.json'
rm -f ~/*.json