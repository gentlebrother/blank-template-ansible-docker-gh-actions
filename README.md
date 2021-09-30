# Black Template Ansible Docker in Github Actions
Blank template for Ansible Docker in Github Actions

## SSH

1) Place your ssh key as ```id_rsa``` in ```~/.ssh```
2) Run this command to encrpyt your ssh key with passphase

```
echo "your-secret-password" > ansible_vault_password.txt &&\
ansible-vault \
encrypt \
--vault-password-file=ansible_vault_password.txt \
~/.ssh/id_rsa \
--output=id_rsa-encrypted &&\
rm ansible_vault_password.txt
```
3) Create Actions Secret ```VAULT_PASS``` for passphase

## Hosts File

1) Edit ```hosts``` in ```.github/actions/deploy/hosts```

## Ansible Playbook

1) Edit ```deploy.yml``` in ```.github/actions/deploy/deploy.yml``` 
