pipeline { 
    agent any 
    options {
        skipStagesAfterUnstable()
    }
    stages {
        stage('package creation') { 
            steps { 
                sh ''' #!/bin/bash
                cd /var/lib/jenkins/workspace/
                sudo rsync -avzP -e 'ssh -i /my-mumbai-key.pem' /var/lib/jenkins/workspace/keep-backend-pipeline ubuntu@13.232.191.197:/home/ubuntu/
                echo ===> package creation on backend server
                '''
            }
        }
        stage('Build') { 
            steps { 
                sh ''' #!/bin/bash
                ssh -i /my-mumbai-key.pem ubuntu@13.232.191.197 'sudo rm -rf /home/ubuntu/keep-backend'
                ssh -i /my-mumbai-key.pem ubuntu@13.232.191.197 'mv /home/ubuntu/keep-backend-pipeline /home/ubuntu/keep-backend'
                ssh -i /my-mumbai-key.pem ubuntu@13.232.191.197 'bash /home/ubuntu/buildJenkis.sh'
                echo ===> Build stage
                '''
            }
        }
        stage('Test') { 
            steps {
                sh 'echo test case runs' 
            }
        }
        stage('deploy') { 
            steps {
                sh ''' #!/bin/bash
                ssh -i /my-mumbai-key.pem ubuntu@13.232.191.197 'bash /home/ubuntu/deployJenkins.sh'
                echo ===> deploy stage
                '''
            }
        }
    }
}
