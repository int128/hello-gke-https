#!/bin/bash -xe

kubectl --namespace hello delete ingress ingress-hello

gcloud compute addresses delete hello-static-ip --global
gcloud compute addresses list

gcloud container clusters delete sandbox --zone "us-west1-a"
