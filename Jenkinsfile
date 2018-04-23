pipeline {
  agent any
  stages {
    stage('Kitchen: Create') {
      steps {
        echo '######################'
        echo 'Running Kitchen Create'
        echo '######################'
        sh 'bundle exec kitchen create'
      }
    }
    stage('Kitchen: Converge') {
      steps {
        echo '######################'
        echo 'Running Kitchen Converge'
        echo '######################'
        sh 'bundle exec kitchen converge'
      }
    }
    stage('Kitchen: Verify') {
      steps {
        echo '######################'
        echo 'Running Kitchen Verify'
        echo '######################'
        sh 'sleep 300'
        sh 'terraform output --json > test/integration/default/files/terraform.json'
        sh 'bundle exec inspec exec --log-level=debug test/integration/default'
      }
    }
    stage('Kitchen: Destroy') {
      steps {
        echo "######################"
        echo "Running Kitchen Destroy"
        echo "######################"
        sh 'bundle exec kitchen destroy'
      }
    }
  }
  post {
    failure {
      sh 'bundle exec kitchen destroy'
    }
  }
}