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
              
                bat '"%JBOSS_HOME%/jboss-cli.bat" -c controller=127.0.0.1:9990 --user=admin --password=abcd@1234 --command="deploy target/my-app-1.0-SNAPSHOT.jar"'  

            }
        }
    }
}
