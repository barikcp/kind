# Install KinD cluster

Step-1: Install docker.​

        sudo apt-get update                              # update apt package 
        
        # Install packages to allow apt
        sudo apt-get install \
             ca-certificates \
             curl \
             gnupg \
             lsb-release ​                                                        

        # Add Docker’s official GPG key
        sudo mkdir -p /etc/apt/keyrings​                                            
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg                                      # 
         
        # set up the repository
        echo \
           "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
            $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
            
       sudo apt-get update\                      # update apt package
       sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
       
       ps -eaf|grep docker   # Check the docker process status
       sudo service docker status   # check the docker service status
       
        
Step-2: Install Kubectl

       sudo apt-get update                                                 # update apt package
       sudo apt-get install -y ca-certificates curl ​                      # install packages needed to use the Kubernetes apt 
       sudo apt-get install -y apt-transport-https​                        
       
       #Download the Google Cloud public signing key:
       sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
       
       #Add the Kubernetes apt repository
       echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
       
       sudo apt-get update                                       # update apt package
       sudo apt-get install -y kubectl                           #install kubectl
       


Step-3: Install Kind

       curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64        # Download the binary

       chmod +x ./kind ​                                                           # Give Executable permission  
        
       mv ./kind /usr/local/bin​                                                   # Move the downloaded folder to /bin directory 
       
       kind create cluster --name k8s-kind-cluster-cp                              # Create KinD cluster
       
       kubectl get nodes                                                           # Check the status of the node


