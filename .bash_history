apt update 
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.21.2/2021-07-05/bin/linux/amd64/kubectl
curl -o aws-iam-authenticator https://amazon-eks.s3.us-west-2.amazonaws.com/1.21.2/2021-07-05/bin/linux/amd64/aws-iam-authenticator
apt install unzip -y
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
mkdir kub
cd kub/
git clone https://github.com/vumdao/efs-eks.git
cd efs-eks/
ls
vim cluster.yaml
vim efs-provisioner-deployment.yaml 
vim cluster.yaml
eksctl create cluster -f cluster.yaml
apply -f efs-provisioner-deployment.yaml
kubectl apply -f efs-provisioner-deployment.yaml
root@ctl:~/efs-eks-demo# kubectl apply -f efs-pvc.yaml 
storageclass.storage.k8s.io/efs-sc created
persistentvolumeclaim/efs-demo-claim created
root@ctl:~/efs-eks-demo# kubectl get pvc -n demo
NAME             STATUS   VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS   AGE
efs-demo-claim   Bound    pvc-e00f83c9-4168-41ba-ae8b-08bc57f466e4   100Mi      RWX            aws-efs        10s
root@ctl:~/efs-eks-demo# kubectl get storageclass
NAME            PROVISIONER             RECLAIMPOLICY   VOLUMEBINDINGMODE   ALLOWVOLUMEEXPANSION   AGE
kubectl apply -f efs-pvc.yaml
kubectl get pvc -n demo
kubectl describe efs-demo-claim
kubectl describe efs-demo-claim -n demo
vim efs-pvc.yaml 
kubectl delete -f efs-pvc.yaml
kubectl get pvc -n demo
kubectl apply -f efs-pvc.yaml
kubectl get pvc -n demo
kubectl descriibe pvc -n demo
kubectl describe pvc -n demo
cat efs-provisioner-deployment.yaml 
cat efs-pvc.yaml 
kubectl describe pvc -n demo
kubectl get pvc -n demo
kubectl delete -f efs-pvc.yaml
kubectl delete -f efs-provisioner-deployment.yaml 
cd 
cd kub/
ls
vim efs-provisioner.yaml
kubectl apply -f efs-provisioner.yaml 
kubectl delete -f efs-provisioner.yaml 
vim efs-provisioner.yaml
kubectl apply -f efs-provisioner.yaml 
kubectl get pv
kubectl get pod
kubectl describe efs-app
kubectl describe ns
kubectl get  ns
kubectl get pod
kubectl  logs efs-app
kubectl get CSIDriver efs.csi.aws.com -o yaml
kubectl get pv
kubectl get pod
kubectl logs efs-app
kubectl describe efs-app
kubectl describe pv
cat efs-eks/
ls
cat efs-provisioner.yaml 
cd efs-eks/
ls
cat efs-provis
kubectl get pod
kubectl describe pod  efs-app
cd ..
sl
kubectl apply -k "github.com/kubernetes-sigs/aws-efs-csi-driver/deploy/kubernetes/overlays/stable/?ref=master"
kubectl apply -k "github.com/kubernetes-sigs/aws-efs-csi-driver/deploy/kubernetes/overlays/dev/?ref=master"
ls
cat efs-provisioner.yaml 
kubectl delete -f efs-provisioner.yaml 
kubectl apply -f efs-provisioner.yaml 
kubectl get pods
kubectl describe pod  efs-app
kubectl delete -f efs-provisioner.yaml 
kubectl apply -f efs-provisioner.yaml 
kubectl describe pod  efs-app
kubectl apply -f efs-provisioner.yaml 
kubectl describe pod  efs-app
kubectl apply -f efs-provisioner.yaml 
kubectl describe pod  efs-app
kubectl delete -f efs-provisioner.yaml 
kubectl apply -f efs-provisioner.yaml 
kubectl describe pod  efs-app
kubectl get  pod  
kubectl describe pod  efs-app
vim efs-provisioner.yaml 
kubectl delete -f efs-provisioner.yaml 
kubectl apply -f efs-provisioner.yaml 
kubectl describe pod  efs-app
vim efs-provisioner.yaml 
kubectl delete -f efs-provisioner.yaml 
kubectl apply -f efs-provisioner.yaml 
kubectl describe pod  efs-app
kubectl get  pod  
cat efs-provisioner.yaml 
kubectl exec -it efs-app -- tail /data-dir1/out.txt
kubectl exec -it efs-app -- tail /out.txt
kubectl exec -it efs-app  ls /
kubectl exec -it efs-app  ls /data-dir1
kubectl exec -it efs-app -- ls /data-dir1
kubectl exec -it efs-app -- ls /
kubectl exec -it efs-app -- ls /etc/
kubectl exec -it efs-app -- ls /
kubectl exec -it efs-app -- ls 
kubectl exec -it efs-app -- ls data-dir1/
df -h
kubectl exec -it efs-app -- ll
kubectl exec -it efs-app -- ls -ll
kubectl exec -it efs-app -- ls -lh
kubectl exec -it efs-app -- ls -lrths
kubectl exec -it efs-app -- du -sh
kubectl exec -it efs-app -- du -sh *
kubectl exec -it efs-app -- du -sh /*
kubectl exec -it efs-app -- du -sh .
kubectl exec -it efs-app -- du -sh 
kubectl exec -it efs-app -- ls
cat efs-eks/efs-writer.yaml .
cp efs-eks/efs-writer.yaml .
cp efs-eks/efs-reader.yaml .
ls 
cat efs-reader.yaml 
vim efs-writer.yaml 
kubectl delete -f efs-provisioner.yaml 
cd efs-eks/
vim efs-provisioner-deployment.yaml 
kubectl apply -f efs-provisioner-deployment.yaml 
kubectl apply -f efs-pvc.yaml 
kubectl get pod -n demo
kubectl get pvc -n demo
kubectl describe -n demo efs-demo-claim
kubectl describe -n demo pvc  efs-demo-claim
cat efs-provisioner-deployment.yaml 
cat efs-pvc.yaml 
cat ..
cd..
cd ..
cat efs-provisioner.yaml 
vim efs-eks/efs-pvc.yaml 
cat efs-provisioner.yaml 
cd efs-eks/
kubectl apply -f efs-pvc.yaml 
vim efs-pvc.yaml 
kubectl delete -f efs-pvc.yaml 
kubectl delete -f efs-provisioner-deployment.yaml 
c d..
cd ..
vim efs-provisioner.yaml 
kubectl apply -f efs-provisioner.yaml 
kubectl get pod 
kubectl get pv
kubectl exec -it efs-app -- ls
kubectl exec -it efs-app -- ls data-dir1
ls /
ls
ls 
kubectl get pv
kubectl describe  efs-app
kubectl describe  pod  efs-app
cat efs-provisioner.yaml 
kubectl exec -it efs-app -- ls 
kubectl exec -it efs-app -- mkdir data-dir1/out.txt
kubectl exec -it efs-app bash
cd kub/
ls
cat efs-provisioner.yaml l
kubectl exec -it efs-app bash
cat efs-provisioner.yaml 
cd
history 
ls 
cd kub
ls
cat efs-provisioner.yaml 
cd kub/
cat efs-provisioner.yaml 
