import json
import os
import boto3
def handler(event, context):
    client = boto3.client('sns')
    message = os.environ['LAMBDA_MESSAGE']
    lambdaArn = os.environ['LAMBDA_ARN']
    response = client.publish(
    TopicArn=lambdaArn,
    Subject='This is the best topic',
    Message=str(event),
)
    return {
        'statusCode': 200,
        'body': json.dumps('lambda sended emails!!')
    }