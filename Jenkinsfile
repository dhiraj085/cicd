pipeline {
    agent any
    triggers {
        pollSCM '* * * * *'

    }
    stages {
        stage('Build') {
            steps {
                bat 'gradlew build'
            }
        }
//          stage('Test') {
//             steps {
//                 sh 'gradle test'
//             }
//         }
        stage('Build Docker Image') {
            steps {
                sh 'gradlew docker -x test'
            }
        }
        stage('Run Docker Image') {
            steps {
                sh 'gradle dockerRun'
            }
        }
    }
}