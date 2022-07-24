
import { handlerPath } from '@libs/handler-resolver';

export const createProduct = {
  handler: `${handlerPath(__dirname)}/handler.getProductsList`,
  events: [
    {
      http: {
        method: 'post',
        path: 'products',
        cors: true,
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