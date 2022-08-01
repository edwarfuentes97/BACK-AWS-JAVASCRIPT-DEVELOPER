import type { AWS } from '@serverless/typescript';
import { importProductsFile } from '@functions/importProductsFile';
import { importFileParser } from '@functions/importFileParser';


const serverlessConfiguration: AWS = {
  service: 'import-service-dev-19971101',
  frameworkVersion: '3',
  plugins: ['serverless-esbuild'],
  provider: {
    name: 'aws',
    runtime: 'nodejs14.x',
    apiGateway: {
      minimumCompressionSize: 1024,
      shouldStartNameWithService: true,
    },
    environment: {
      AWS_NODEJS_CONNECTION_REUSE_ENABLED: '1',
      NODE_OPTIONS: '--enable-source-maps --stack-trace-limit=1000',
      BUCKET_NAME: 'import-service-dev-19971-serverlessdeploymentbuck-11tvuq8kcpm6g',
      BUCKET: 'arn:aws:s3:::import-service-dev-19971-serverlessdeploymentbuck-11tvuq8kcpm6g',
      REGION: 'us-east-1'
    },
    iamRoleStatements: [
      {
        Effect: 'Allow',
        Action: ['s3:ListBucket' ],
        Resource: [ 'arn:aws:s3:::import-service-dev-19971-serverlessdeploymentbuck-11tvuq8kcpm6g' ]
      },
      {
        Effect: 'Allow',
        Action: ['s3:*' ],
        Resource: [ 'arn:aws:s3:::import-service-dev-19971-serverlessdeploymentbuck-11tvuq8kcpm6g/*' ]
      }
    ]
  },
  // import the function via paths
  functions: { importProductsFile, importFileParser },
  package: { individually: true },
  custom: {
    esbuild: {
      bundle: true,
      minify: false,
      sourcemap: true,
      exclude: ['aws-sdk'],
      target: 'node14',
      define: { 'require.resolve': undefined },
      platform: 'node',
      concurrency: 10,
    },
  },
};

module.exports = serverlessConfiguration;
