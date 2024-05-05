// pipeline {
//     agent any
//     stages {
//         stage('Test') {
//             agent{
//                 docker { image 'node:20.11.1-alpine3.19' }
//             }
//         }
//         steps {
//         sh 'mvn clean install'
//         }
//     }
// }


pipeline {
  agent none
  stages {
    stage('Maven Install') {
      agent {
        docker {
          image 'maven:3.5.0'
        }
      }
      steps {
        sh 'mvn clean install'
      }
    }
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t shanem/spring-petclinic:latest .'
      }
    }
  }
}