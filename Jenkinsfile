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
                sh 'ssh -i /my-mumbai-key.pem ubuntu@65.0.96.93' 
            }
        }
    }
}
