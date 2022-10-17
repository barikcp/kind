# Install docker

Step-1: Install KinD cluster in MasterNode.​

        sudo apt-get update                                                       # Download the binary

        chmod +x k3s ​                                                            # Give Executable permission  

        sudo ./k3s server​                                                        # Install K3s cluster in Master Node   
        
        sudo ./k3s kubectl get nodes -o wide                                      # Check how many nodes got created
         
        cat /var/lib/rancher/k3s/server/token                                     # Use this token for connecting Worker-Node to MasterNode

