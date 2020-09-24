pipeline {
    agent { dockerfile true}

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'ng build --prod'
                echo 'Building done'
            }
        }
        
    }
}