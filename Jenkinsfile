pipeline {
    agent dockerfile

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