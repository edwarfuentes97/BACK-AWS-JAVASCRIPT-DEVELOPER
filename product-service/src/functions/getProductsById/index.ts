import { handlerPath } from '@libs/handler-resolver';

export const getProductsById = {
  handler: `${handlerPath(__dirname)}/handler.GetProductsById`,
  events: [
    {
      http: {
        method: 'get',
        path: 'products/{id}',
        cors: {
          origin: '*'
        },
        responses: {
          '200': {
            description: 'Success response',
            bodyType: 'Product'
          }
        }
      },
    },
  ],
};
