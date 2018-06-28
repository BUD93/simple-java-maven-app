pipeline {
    agent any
    stages {
        stage('Build') { 
            steps {
                bat 'sh 'mvn -B -DskipTests clean package''
            }
        }
    }
}
