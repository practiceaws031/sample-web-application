pipeline {
    agent {
        docker {
            image 'maven'
            args '-v $HOME/.m2:/root/.m2'
        }
    }
    
    stages {
        stage("checkout"){
            steps{
                git 'https://github.com/practiceaws031/sample-web-application.git'
            }
        }
        stage("build"){
            steps{
                sh 'mvn clean package'
            }
        }
        stage("build dockerfile"){
            steps {
                sh 'docker build -t tomcat_image .'
            }
        }
        stage("deploy container"){
            steps {
                sh 'docker run -itd --name tomcat_container -p 8090:8080 tomcat_image'
            }
        }
    }
}
