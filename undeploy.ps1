cd "C:\Program Files\jboss\bin"
./jboss-cli.ps1 --connect --controller=remote+http://127.0.0.1:9990 --user=admin --password=bursys@1234 --command="undeploy my-app-1.0-SNAPSHOT.jar"
