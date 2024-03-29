pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                // Running a bash script
                sh '''
                    #!/bin/bash
                    echo "Running my bash script"
                    sudo sh my_script.sh
                '''
            }
        }
    }
}
