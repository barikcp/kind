# Install Kind

curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64

chmod +x ./kind

mv ./kind /usr/local/bin

kind create cluster --name k8s-kind-cluster-cp
 
kubectl get nodes
