pipeline {
    agent any
    stages 
    {

        stage('Deliver') { 
            steps { 
                echo 'hi'
                //cmd 'cd "%JBOSS_HOME%"'
              //bat '"%JBOSS_HOME%/jboss-cli.bat" -c controller=127.0.0.1:9990 --user=admin --password=abcd@1234 --command=deploy' 

                //bat '"%JBOSS_HOME%/bin/jboss-cli.bat" -connect=127.0.0.1:9990 --user=admin --password=abcd@1234'
                //bat '"%JBOSS_HOME%/bin/jboss-cli.bat" --connect --controller=remote+http://127.0.0.1:9990 --user=admin --password=abcd@1234'
                //powershell '"%JBOSS_HOME%/bin/jboss-cli.ps1" --connect --controller=remote+http://127.0.0.1:9990 --user=admin --password=bursys@1234 --command=undeploy my-app-1.0-SNAPSHOT'
                //bat 'connect=127.0.0.1:9990 --user=admin --password=abcd@1234'
               // bat 'cd "C:\Program Files\jboss\bin"'
                //powershell  './jboss-cli.ps1 --connect --controller=remote+http://127.0.0.1:9990 --user=admin --password=bursys@1234 --command="undeploy my-app-1.0-SNAPSHOT.jar"'
                powershell ./deploy.ps1
            }
        }
    }
}
