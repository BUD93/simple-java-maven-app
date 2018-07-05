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
                bat 'java -jar target/my-app-1.0-SNAPSHOT.jar'
                bat '${jboss_path}/jboss-cli.sh -c controller=127.0.0.1:9990 --user=admin --password=abcd@1234 --command="deploy target/my-app-1.0-SNAPSHOT.jar"'  

            }
        }
    }
}
