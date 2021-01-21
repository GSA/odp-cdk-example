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

    stage('IaC Scan') {
      steps {
        sh '''mkdir iac-scan
find ./serverless/cdk.out/ -name \'*.template.json\' -exec cp -prv \'{}\' \'./iac-scan\' \';\''''
        dir(path: 'iac-scan') {
          prismaIaC(high: '0', low: '0', medium: '0', operator: 'OR', assetname: 'cdk-test', tags: 'env:sandbox', templatetype: 'CFT', hostName: 'test', templateversion: '0')
        }

      }
    }

    stage('CDK deploy') {
      steps {
        dir(path: 'serverless') {
          sh 'cdk deploy --require-approval=never'
        }

      }
    }

  }
}