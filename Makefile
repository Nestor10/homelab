
install_dev_deps:
	pip install .[dev]

install_ansible_deps:
	ansible-galaxy collection install -r requirements.yml
	
create_secrets:
	ansible-vault create --vault-password-file secret.txt vars/pia.yaml

secrets:
	ansible-vault edit --vault-password-file secret.txt vars/pia.yaml

quadlet:
	ansible-playbook --vault-password-file secret.txt -i inventory.yaml playbooks/quadlet.yaml