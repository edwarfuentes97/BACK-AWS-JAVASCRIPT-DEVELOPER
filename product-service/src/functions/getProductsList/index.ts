
import { handlerPath } from '@libs/handler-resolver';

export default {
  handler: `${handlerPath(__dirname)}/handler.GetProductsList`,
  events: [
    {
      http: {
        method: 'get',
        path: 'products',
        cors: {
          origin: '*'
        },
        request: {

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
