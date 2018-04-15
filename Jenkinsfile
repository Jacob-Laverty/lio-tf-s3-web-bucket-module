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
    stage('Kitchen: Verify') {
      steps {
        echo '######################'
        echo 'Running Kitchen Verify'
        echo '######################'
        sh 'kitchen verify'
      }
    }
    stage('Kitchen: Destroy') {
      steps {
        echo '######################'
        echo 'Running Kitchen Destroy'
        echo '######################'
        sh 'kitchen destroy'
      }
    }
  }
  post {
    failure {
      sh 'kitchen destroy'
    }
  }
}