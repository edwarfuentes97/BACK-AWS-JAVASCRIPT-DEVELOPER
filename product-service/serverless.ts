import type { AWS } from '@serverless/typescript';

import {getProductsList , getProductsById , createProduct} from '@functions/index';


const serverlessConfiguration: AWS = {
  service: 'product-service',
  frameworkVersion: '3',
  plugins: [
    'serverless-esbuild',
    'serverless-auto-swagger'
  ],
  provider: {
    name: 'aws',
    runtime: 'nodejs14.x',
    region: 'us-east-1',
    apiGateway: {
      minimumCompressionSize: 1024,
      shouldStartNameWithService: true,
    },
    environment: {
      AWS_NODEJS_CONNECTION_REUSE_ENABLED: '1',
      NODE_OPTIONS: '--enable-source-maps --stack-trace-limit=1000',
      DATABASE_HOST: '', // dont in github for security reasons
      DATABASE_PORT: '5432',
      DATABASE_USERNAME: 'postgres',
      DATABASE_PASSWORD: '', // dont in github for security reasons
      DATABASE_NAME: 'products_db_x',
    },
    iamRoleStatements: [
      {
        Effect: 'Allow',
        Action: [
          'dynamodb:DescribeTable',
          'dynamodb:Query',
          'dynamodb:Scan',
          'dynamodb:GetItem',
          'dynamodb:PutItem',
          'dynamodb:UpdateItem',
          'dynamodb:DeleteItem',
          'ec2:CreateNetworkInterface',
          'ec2:DescribeNetworkInterfaces',
          'ec2:DeleteNetworkInterface',
        ],
        Resource: [
         '*'
        ]
      }
    ]
  },
  // import the function via paths
  functions: {
    getProductsList,
    getProductsById,
    createProduct
  },
  package: { individually: true },
  custom: {
    esbuild: {
      bundle: true,
      minify: false,
      sourcemap: true,
      exclude: ['aws-sdk', 'pg-native'],
      target: 'node14',
      define: { 'require.resolve': undefined },
      platform: 'node',
      concurrency: 10,
    },
    autoswagger:{
      generateSwaggerOnDeploy: true,
      useStage: true
    }
  },
};

module.exports = serverlessConfiguration;
