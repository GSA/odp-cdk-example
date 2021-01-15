pipeline {
  agent {
    dockerfile true
  }
  stages {
    stage('Run Build') {
      steps {
        dir(path: 'serverless') {
          sh 'npm run build'
        }

      }
    }

    stage('CDK Bootstrap') {
      steps {
        sh 'cdk bootstrap'
      }
    }

  }
}