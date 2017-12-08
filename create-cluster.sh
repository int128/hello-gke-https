#!/bin/bash -xe

gcloud container clusters create sandbox \
  --zone "us-west1-a" \
  --machine-type "g1-small" \
  --disk-size "10" \
  --num-nodes "1"

gcloud compute addresses create hello-static-ip --global
gcloud compute addresses list
