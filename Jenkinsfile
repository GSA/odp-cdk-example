pipeline {
  agent {
      dockerfile {
        filename 'Dockerfile'
      }
  }
  stages {
    stage('Install dependencies') {
      steps {
        dir(path: 'serverless') {
          sh 'npm install @aws-cdk/aws-apigateway @aws-cdk/aws-lambda @aws-cdk/aws-s3'
        }
      }
    }
    stage('Build dependencies') {
      steps {
        dir(path: 'serverless') {
          sh 'npm run build'
        }
      }
    }
    stage('CDK bootstrap') {
      steps {
        dir(path: 'serverless') {
          sh 'cdk bootstrap'
        }
      }
    }
    stage('CDK synth') {
      steps {
        dir(path: 'serverless') {
          sh 'cdk synth'
        }
      }
    }
  }
}
