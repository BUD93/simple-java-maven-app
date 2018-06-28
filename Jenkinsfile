pipeline {
    agent any
    stages {
        stage('Build') { 
            steps {
                echo 'hi'
                bat 'mvn -B -DskipTests clean package' 
            }
        }
    }
}
