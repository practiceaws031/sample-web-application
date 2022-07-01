pipeline {
    agent any
    stages {
        stage("checkout"){
            steps{
                checkout scm
            }
        }
        stage("build"){
            agent {
                docker {
                  image 'maven'
                  args '-v $HOME/.m2:/root/.m2'
                  reuseNode true  
              }
             }
            steps{
                sh 'mvn clean package'
            }
        }
        stage("build dockerfile"){
            steps {
                sh 'docker build -t tomcat_image:latest .'
            }
        }
        stage("deploy container"){
            steps {
                sh 'docker run -itd --name tomcat_container -p 8090:8080 tomcat_image'
            }
        }
    }
}
