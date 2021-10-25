#!/bin/bash
kubectl get secret -n kubernetes-dashboard $(kubectl get serviceaccount admin-user -n kubernetes-dashboard -o jsonpath="{.secrets[0].name}") -o jsonpath="{.data.token}" | base64 --decode > token.txt

# Use less not cat, as cat sometimes does not display entire string
less ./token.txt
