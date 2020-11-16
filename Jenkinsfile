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
                echo ===> package creation stage
                '''
            }
        }
        stage('Build') { 
            steps { 
                sh ''' #!/bin/bash
                cd /var/lib/jenkins/workspace/keep-backend-pipeline
                sudo npm install
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
                cd /var/lib/jenkins/workspace/keep-backend-pipeline
                sudo pm2 start server.js
                echo ===> deploy stage
                '''
            }
        }
    }
}
