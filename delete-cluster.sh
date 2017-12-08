#!/bin/bash -xe

gcloud container clusters delete sandbox --zone "us-west1-a"
gcloud compute addresses delete hello-static-ip
