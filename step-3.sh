# Install Kind

curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64            # Download the binary

chmod +x ./kind                                                                 # Give Executable permission  

mv ./kind /usr/local/bin                                                        # Move the downloaded folder to /bin directory 

kind create cluster --name k8s-kind-cluster-cp                                  # Create KinD cluster

kubectl get nodes                                                               # Check the status of the node
