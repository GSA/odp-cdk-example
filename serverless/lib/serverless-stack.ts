import * as cdk from '@aws-cdk/core';
import * as widget_service from './widget_service';

export class ServerlessStack extends cdk.Stack {
  constructor(scope: cdk.Construct, id: string, props?: cdk.StackProps) {
    super(scope, id, props);
    new widget_service.WidgetService(this, 'Widgets');
  }
}
