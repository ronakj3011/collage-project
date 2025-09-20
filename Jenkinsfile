pipeline {
    agent { label 'test' }   // matches the label of Machine 2
    stages {
        stage('Build') {
            steps {
                sh 'bundle install'  // or your build steps
            }
        }
        stage('Test') {
            steps {
                sh 'rails test'      // or rspec / pytest / etc.
            }
        }
    }
}
