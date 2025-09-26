pipeline {
  agent { label 'linux-2' }
    environment {
        COMPOSE_FILE = "docker-compose.yml"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/ronakj3011/collage-project.git'
            }
        }

        stage('Build & Up Containers') {
            steps {
                
                sh "docker-compose -f ${COMPOSE_FILE} build"
                sh "docker-compose -f ${COMPOSE_FILE} up -d"
            }
        }
        stage('Run Tests') {
            steps {
                sh "docker-compose -f ${COMPOSE_FILE} run --rm -e RAILS_ENV=test  rails-app bin/rails test"
            }
        }

        stage('Deploy') {
            when {
                expression { currentBuild.currentResult == 'SUCCESS' }
            }
            steps {
                echo "✅ Tests passed. Application is running via Docker Compose."
            }
        }
    }

    post {
        always {
            sh "docker-compose -f ${COMPOSE_FILE} logs --tail=50"
        }
        success {
            echo "🎉 Build, test, and deployment successful!"
        }
        failure {
            echo "❌ Build or tests failed. Check logs a bove."
        }
    }
}
