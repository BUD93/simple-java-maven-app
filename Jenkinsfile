pipeline {
    agent {
        docker {
            echo 'hi'
            image 'maven:3-alpine' 
            args '-v /root/.m2:/root/.m2' 
        }
    }
    stages {
        stage('Build') { 
            steps {
                echo 'hi'
                sh 'mvn -B -DskipTests clean package' 
            }
        }
    }
}
