#!/bin/zsh

vagrant box update && vagrant destroy --force && vagrant up && vagrant box prune
