pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                // Configure Maven
                withMaven(maven: 'MavenInstallationName') {
                    // Execute Maven clean and install
                    sh 'mvn clean install'
                }
            }
            post {
                success {
                    echo 'Build Stage Successful'
                }
                failure {
                    echo 'Build Stage Failed'
                    // Perform cleanup or additional actions on build failure
                }
            }
        }
        
        stage('Test') {
            steps {
                // Configure Maven
                withMaven(maven: 'MavenInstallationName') {
                    // Execute Maven test
                    sh 'mvn test'
                }
            }
            post {
                success {
                    echo 'Test Stage Successful'
                }
                failure {
                    echo 'Test Stage Failed'
                    // Perform cleanup or additional actions on test failure
                }
                always {
                    // Archive test reports
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }
        
        stage('Deploy') {
            steps {
                // Configure Maven
                withMaven(maven: 'MavenInstallationName') {
                    // Execute Maven deploy
                    sh 'mvn deploy'
                }
            }
            post {
                success {
                    echo 'Deployment Successful'
                }
                failure {
                    echo 'Deployment Failed'
                    // Perform cleanup or additional actions on deployment failure
                }
            }
        }
    }
    
    post {
        failure {
            echo 'Pipeline failed'
        }
    }
}
