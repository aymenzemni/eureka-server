pipeline {
    agent any
    tools {
        maven 'maven'
    }
    stages {
        stage('Build Maven') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/aymenzemni/eureka-server']]])
                bat 'mvn clean install'
            }
        }
        stage("SonarQube Analysis"){
            steps {
	           script {
		        withSonarQubeEnv(credentialsId: 'jenkins-token') { 
                        sh "mvn sonar:sonar"
		        }
	           }	
           }
       }
    }
}

