pipeline {
  agent any
  stages {
    stage('Kitchen: Create')  {
      steps {
        echo '######################'
        echo 'Running Kitchen Create'
        echo '######################'
        sh 'kitchen create'
      }
    }
    stage('Kitchen: Converge') {
      steps {
        echo '######################'
        echo 'Running Kitchen Converge'
        echo '######################'
        sh 'kitchen converge'
      }
    }
  }
  post {
    failure {
      sh 'kitchen destroy'
    }
  }
}