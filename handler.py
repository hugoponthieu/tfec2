import json
import os
import boto3
def lambda_handler(event, context):
    client = boto3.client('sns')
    lambdaArn = os.environ['LAMBDA_ARN']
    response = client.publish(
    TopicArn=lambdaArn,
    Subject='POUETTE',
    Message='pouette',
)
    return {
        'statusCode': 200,
        'body': json.dumps('lambda sended emails!!')
    }