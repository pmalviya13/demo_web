pipeline {
    agent { dockerfile {
        args '-v /var/run/docker.sock:/var/run/docker.sock -p 81:80'
    }}

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                echo 'Building done'
            }
        }

    }
}
