pipeline {
    agent any
    stages 
    {

        stage('Deliver') { 
            steps { 
              bat '"%JBOSS_HOME%/jboss-cli.bat" -c controller=127.0.0.1:9990 --user=admin --password=abcd@1234 --command=deploy' 

            }
        }
    }
}
