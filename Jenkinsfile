pipeline {
    agent any
    stages {
        stage('Build') { 
            steps {
                echo 'hi'
                sh 'mvn -B -DskipTests clean package' 
            }
        }
    }
}
