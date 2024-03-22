import boto3
import datetime
import os
ec2 = boto3.client('ec2')
sns = boto3.client('sns')

def handler(event, context):
    instance_id = event['detail']['instance-id']
    state = event['detail']['state']

    if state == 'running':
        launch_time = event['detail']['launch-time']
        current_time = datetime.datetime.utcnow()
        time_diff = current_time - launch_time
        
        if time_diff.total_seconds() <= 30:
            running_instances = ec2.describe_instances(Filters=[{'Name': 'instance-state-name', 'Values': ['running']}])
            num_running_instances = sum(len(reservations['Instances']) for reservations in running_instances['Reservations'])

            if num_running_instances > 2:
                sns.publish(
                    TopicArn=os.environ['LAMBDA_ARN'],
                    Message=os.environ['LAMBDA_MESSAGE']
                )