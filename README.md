# Install KinD cluster

Step-1: Install docker.​

        sudo apt-get update                                                       # 

        sudo apt-get install \
             ca-certificates \
             curl \
             gnupg \
             lsb-release ​                                                        #

        sudo mkdir -p /etc/apt/keyrings​                                          #  
        
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg                                      # 
         
        echo \
           "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
            $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
            
       sudo apt-get update\
       
       sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
       
       ps -eaf|grep docker   # Check the docker process status
       
       sudo service docker status   # check the docker service status
       
        
Step-2: Install Kubectl

       sudo apt-get update                                                            # 
       sudo apt-get install -y ca-certificates curl ​                                 # 
       sudo apt-get install -y apt-transport-https​                                   #
       sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
       echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
       
       sudo apt-get update
       sudo apt-get install -y kubectl
       


Step-3: Install Kind

       curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64        # Download the binary

       chmod +x ./kind ​                                                                 # Give Executable permission  
        
       mv ./kind /usr/local/bin​                           # This command will be shown on the screen after K3s installed in step-1
       
       kind create cluster --name k8s-kind-cluster-cp
       kubectl get nodes


