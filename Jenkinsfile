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
                sudo cp keep-backend /home/ubuntu
                cd /home/ubuntu
                '''
            }
        }
        stage('Build') { 
            steps { 
                sh ''' #!/bin/bash
                cd /home/ubuntu/keep-backend
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
                cd /home/ubuntu/keep-backend
                sudo pm2 start server.js
                '''
            }
        }
    }
}
