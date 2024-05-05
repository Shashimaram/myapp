pipeline {
    agent any
    stages {
        stage('Test') {
            agent{
                docker { image 'node:20.11.1-alpine3.19' }
            }
        }
        steps {
        sh 'mvn clean install'
        }
    }
}