#!/bin/bash -xe

gcloud container clusters delete sandbox
gcloud compute addresses delete hello-static-ip
