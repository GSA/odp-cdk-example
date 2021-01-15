pipeline {
  agent none
  stages {
    stage('Run Build') {
      agent {
        dockerfile {
          filename 'Dockerfile'
        }

      }
      steps {
        dir(path: 'serverless') {
          sh '''npm install @aws-cdk/aws-apigateway @aws-cdk/aws-lambda @aws-cdk/aws-s3
npm run build
cdk bootstrap'''
        }

      }
    }

  }
}