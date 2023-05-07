pipeline{
    agent any
    
    tools {
        maven 'mymaven'
            }
    
    stages{
        
        stage('Git Clone'){
            
            steps{
                git branch: 'main', url: 'https://github.com/knbtechnosys/JAVA_Project_6pm.git'
            }
        }
        
        stage('Build'){
            steps{
                sh 'mvn install'
            }
        }
        
        stage('Docker Build'){
            steps{
                sh 'docker build -t nbktechnosys/myjavaproject7may .'
            }
        }
        
        stage('Docker Push'){
            steps{
                withCredentials([string(credentialsId: 'docker-hub', variable: 'dockerpush')]) {
                sh 'docker login -u nbktechnosys -p ${dockerpush}'
                }
                 sh 'docker push nbktechnosys/myjavaproject7may'
            }
           
        }
    }
}
