import { formatJSONResponse } from '@libs/api-gateway';
import { middyfy } from '@libs/lambda';
import cors from '@middy/http-cors';
// @ts-ignore
import { default as products } from '../../shared/products.json';
import {APIGatewayProxyResult} from "aws-lambda";


export const getProductsList = middyfy( async (): Promise<APIGatewayProxyResult>  => {
  return formatJSONResponse(products);
}).use(cors());
