import boto3
import datetime
import os
import json
ec2 = boto3.client('ec2')
sns = boto3.client('sns')

def handler(event, context):
    running_instances = ec2.describe_instances(Filters=[{'Name': 'instance-state-name', 'Values': ['running']}])
    times=[]
    for instance in running_instances['Reservations']:
        times.append(int(instance['Instances'][0]['LaunchTime'].timestamp()))
    now = int(datetime.datetime.now().timestamp())
    count= 0
    for t in times:
        if now-t < 30:
            count+=1
    if count>2 : 
        sns.publish(
                TopicArn=os.environ['LAMBDA_ARN'],
                Message=os.environ['LAMBDA_MESSAGE']
            )

test = str(2)
