# Install docker

Step-1: Install KinD cluster in MasterNode.​

        sudo apt-get update                                                       # Download the binary

        chmod +x k3s ​                                                            # Give Executable permission  

        sudo ./k3s server​                                                        # Install K3s cluster in Master Node   
        
        sudo ./k3s kubectl get nodes -o wide                                      # Check how many nodes got created
         
        cat /var/lib/rancher/k3s/server/token                                     # Use this token for connecting Worker-Node to MasterNode

Step-2: (Join the worker-node-1 to MasterNode)

       wget https://github.com/k3s-io/k3s/releases/download/v1.23.5%2Bk3s1/k3s        # Download the binary

       chmod +x k3s ​                                                                 # Give Executable permission  
             
       sudo ./k3s agent -s https://10.160.0.4:6443 -t <Code_shown_in_above_step-2>​   # This command will be shown on the screen after K3s installed in step-1



Step-3: (Join the worker-node-2 to MasterNode)

       wget https://github.com/k3s-io/k3s/releases/download/v1.23.5%2Bk3s1/k3s        # Download the binary

       chmod +x k3s ​                                                                 # Give Executable permission  
        
       sudo ./k3s agent -s https://10.160.0.4:6443 -t <Code_shown_in_above_step-2>​   # This command will be shown on the screen after K3s installed in step-1


Step-4: Verify the status of the Node (Execute in Master Node)

         sudo ./k3s kubectl get nodes -o wide​
