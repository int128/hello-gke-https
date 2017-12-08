# Hello GKE with HTTPS

Hello world on GKE with HTTPS ingress by [kube-lego](https://github.com/jetstack/kube-lego).

## Prerequisite

- `gcloud` and `kubectl` are configured for GKE
- Valid email address
- Wildcard domain (e.g. `*.sandbox.example.com`)

## How to create

Fix an email address and domain name in YAMLs.

```sh
sed -i -e 's/EMAIL_ADDRESS/you@example.com/g' lego/configmap.yaml
sed -i -e 's/DOMAIN_NAME/sandbox.example.com/g' hello/ingress.yaml
```

Create a cluster.

```sh
kubectl version
./create-cluster.sh
```

Associate your wildcard domain and the reserved IP address.

Deploy pods and ingress.

```sh
kubectl apply -f lego
kubectl apply -f hello
```

See log of kube-lego.

```sh
kubectl logs -f --tail=100 --namespace kube-lego "$(kubectl get pod --namespace kube-lego -l app=kube-lego -o name)"
```

Open following URLs.

- https://echo.sandbox.example.com
- https://www.sandbox.example.com

## How to cleanup

```sh
./delete-cluster.sh
```
