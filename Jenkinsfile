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
                sh 'echo test case runs' 
            }
        }
    }
}
