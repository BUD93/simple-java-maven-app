pipeline {
    agent any
    stages 
    {
        stage('Build') { 
            steps {
                bat 'mvn -B -DskipTests clean package' 
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
                bat 'mvn jar:jar install:install help:evaluate -Dexpression=project.name'
                bat 'java -jar target/test.jar'
            }
        }
    }
}
