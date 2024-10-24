pipeline{
    agent any
    stages{
        stage('checkout the code from github'){
            steps{
                 git url: 'https://github.com/shruthi6295/star-agile-health-care'
                 echo 'github url checkout'
            }
        }
        stage('codecompile with shruthi'){
            steps{
                echo 'starting compiling'
                sh 'mvn compile'
            }
        }
        stage('codetesting with shruthi'){
            steps{
                sh 'mvn test'
            }
        }
        stage('qa with shruthi'){
            steps{
                sh 'mvn checkstyle:checkstyle'
            }
        }
        stage('package with shruthi'){
            steps{
                sh 'mvn package'
            }
        }
        stage('run dockerfile'){
          steps{
               sh 'docker build -t myimg1 .'
           }
         }
        stage('port expose'){
            steps{
                sh 'docker run -dt -p 8082:8082 --name c003 myimg1'
            }
        }   
    }
}
