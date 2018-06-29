pipeline {
    agent any
    stages 
    {
        stage('Build') { 
            steps {
                bat 'mvn -B' 
            }
        }
        stage('Test') {
            steps {
                bat 'mvn test'
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }
        stage('Deliver') { 
            steps {
                sh 'deliver.sh' 
            }
        }
    }
}
