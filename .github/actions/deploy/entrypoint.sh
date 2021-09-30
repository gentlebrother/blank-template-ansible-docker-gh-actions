#!/bin/sh

ansible-playbook -i ./.github/actions/deploy/hosts \
./.github/actions/deploy/deploy.yml
