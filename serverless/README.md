This example walks you through how to create the resources for a simple widget dispensing service. (For the purpose of this example, a widget is just a name or identifier that can be added to, retrieved from, and deleted from a collection.) The example includes:

- An AWS Lambda function.
- An Amazon API Gateway API to call the Lambda function.
- An Amazon S3 bucket that contains the Lambda function code.

This tutorial contains the following steps:
1. Creates a AWS CDK app
2. Creates a Lambda function that gets a list of widgets with HTTP GET /
3. Creates the service that calls the Lambda function
4. Adds the service to the AWS CDK app
5. Tests the app
6. Adds Lambda functions to do the following:
    - Create a widget with POST /{name}
    - Get a widget by name with GET /{name}
    - Delete a widget by name with DELETE /{name}
