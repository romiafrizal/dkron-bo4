# Manual kubernetes dkron-bo4 local
- install minikube & kubectl in your machine

## MINIKUBE
- start | stop minikube
```
minikube start | stop
```
- Get IP address from minikube
```
minikube ip
```


## KUBECTL
- Check kubernetes service
```
kubectl get all
```
- Apply and running container service pods
```
kubectl apply -f <name-of-service>.yml 
kubectl apply -f . 
```
- Delete pods
```
kubectl delete pods/<name-of-pods>
```
- Delete service 
``` 
kubectl delete service/<nameofservice>
```
- Delete replicaset 
``` 
kubectl delete replicaset/<nameofservice>
```