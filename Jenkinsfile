pipeline { 
    agent any 
    options {
        skipStagesAfterUnstable()
    }
    stages {
        stage('Build') { 
            steps { 
                sh 'npm install' 
            }
        }
        stage('Test') { 
            steps {
                sh '/var/lib/jenkins/workspace/keep-backend-pipeline/test/test.sh' 
            }
        }
    }
}
