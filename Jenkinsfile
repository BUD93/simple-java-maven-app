pipeline {
    agent any
    stages 
    {

        stage('Deliver') { 
            steps { 
                //cmd 'cd "%JBOSS_HOME%"'
              //bat '"%JBOSS_HOME%/jboss-cli.bat" -c controller=127.0.0.1:9990 --user=admin --password=abcd@1234 --command=deploy' 

                bat '"%JBOSS_HOME%/bin/jboss-cli.bat" 127.0.0.1:9990 admin abcd@1234'
            }
        }
    }
}
