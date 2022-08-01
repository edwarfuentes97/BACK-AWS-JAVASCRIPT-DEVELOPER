import { handlerPath } from '@libs/handler-resolver';

export const importFileParser = {
  handler: `${handlerPath(__dirname)}/handler.importProductsFile`,
  events: [
    {
      s3: {
        bucket:  'import-service-dev-19971-serverlessdeploymentbuck-11tvuq8kcpm6g',
        event: 's3:ObjectCreated:*',
        rules: [
          {
            prefix: 'uploaded/',
          }
        ],
        existing: true,
      },
    }
  ]
};
