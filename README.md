# eks_with_efs

EKS with EFS 

=============================================================

1. create EKS cluster

2. create EFS volume with same vpc
   Get important elements after creating EFS
      File System ID: fs-0a0ed8d3600932ba1

3. Install efs.csi.aws.com driver 
      kubectl apply -k "github.com/kubernetes-sigs/aws-efs-csi-driver/deploy/kubernetes/overlays/stable/?ref=master"

4.Create EFS provisioner
cat efs-provisioner.yaml 
kind: StorageClass
apiVersion: storage.k8s.io/v1
metadata:
  name: efs-sc
provisioner: efs.csi.aws.com
---
apiVersion: v1
kind: PersistentVolume
metadata:
  name: efs-pv1
spec:
  capacity:
    storage: 100Mi
  volumeMode: Filesystem
  accessModes:
    - ReadWriteMany
  persistentVolumeReclaimPolicy: Retain
  storageClassName: efs-sc
  mountOptions:
    - tls
  csi:
    driver: efs.csi.aws.com
    volumeHandle: fs-0a0ed8d3600932ba1
---
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: efs-claim1
spec:
  accessModes:
    - ReadWriteMany
  storageClassName: efs-sc
  resources:
    requests:
      storage: 100Mi
---
apiVersion: v1
kind: Pod
metadata:
  name: efs-app
spec:
  containers:
  - name: app
    image: centos
    command: ["/bin/sh"]
    args: ["-c", "while true; do echo $(date -u) >> /data-dir1/out.txt; sleep 5; done"]
    volumeMounts:
    - name: efs-volume-1
      mountPath: /data-dir1
  volumes:
  - name: efs-volume-1
    persistentVolumeClaim:
      claimName: efs-claim1
5. Add the IAM policies  for EFS role access for volume

