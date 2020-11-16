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
                cp keep-backend-pipeline /home/ubuntu
                cd /home/ubuntu
                '''
            }
        }
        stage('Build') { 
            steps { 
                sh ''' #!/bin/bash
                cd /home/ubuntu/keep-backend-pipeline
                sudo npm install
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
                cd /home/ubuntu/keep-backend-pipeline
                sudo pm2 start server.js
                '''
            }
        }
    }
}
