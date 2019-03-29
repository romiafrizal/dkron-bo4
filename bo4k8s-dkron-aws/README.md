# Manual kubernetes dkron-bo4
## KOPS
#### install kops
``` https://github.com/kubernetes/kops/blob/master/docs/aws.md ```

#### Create Cluster
- Create s3 private:
```
dkron-kops-state-storage-bo4-com
dkron-kops-state-storage-bo4-xyz
```

- Export variable
```
export AWS_ACCESS_KEY_ID=$(aws configure get aws_access_key_id)
export AWS_SECRET_ACCESS_KEY=$(aws configure get aws_secret_access_key)
```
```
export NAME=dkron.k8s.local
export KOPS_STATE_STORE=s3://<your-bucket-name>
```
- Generate ssh public key
```
ssh-keygen -b 2048 -t rsa -f ~/.ssh/id_rsa
```
- Adding ssh to kops
```
kops create secret --name ${NAME} sshpublickey admin -i ~/.ssh/id_rsa.pub 
```
- Create cluster (sparate by comma each availability zones)
``` 
kops create cluster --zones ap-southeast-1a,ap-southeast-1b,ap-southeast-1c ${NAME}
```
- Customize/edit the cluser
```
kops edit cluster ${NAME}
```
- Edit Instance group nodes (min/max desired instances)
```
kops edit ig nodes --name ${NAME}
```
- Edit Instance group master
```
kops edit ig <name-of-master-node> --name ${NAME}
```
- Check your instance group 
```
kops get ig --name ${NAME}
```

#### Running Cluster
- Update and running cluster
```
kops update cluster ${NAME} --yes
```
- Validate cluster
```
kops validate cluster
```
## KUBECTL
- Check kubernetes service
```
kubectl get all
```
- Apply and running container service pods
```
kubectl apply -f <name-of-pod>.yml 
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

#### STOP Bootstrap instance
after bootstrap instance stop, data "export" is gone. to get it back:
``` 
history | grep export 
```
```
!<nuberoffexport> 
!447 
```
Tips: CTRL+R in terminal to find histori command.

## WARNING !!! Dont Use in Production
#### Delete Cluster
``` 
kops delete cluster --name ${NAME} --yes
```