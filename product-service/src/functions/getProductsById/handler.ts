import { formatJSONResponse } from '@libs/api-gateway';
import { middyfy } from '@libs/lambda';
// @ts-ignore
import { default as products } from '../../shared/products.json';
import cors from '@middy/http-cors';
import {APIGatewayProxyEvent, APIGatewayProxyResult} from "aws-lambda";

export const GetProductsById = middyfy( async (event:APIGatewayProxyEvent): Promise<APIGatewayProxyResult>  => {
  console.log(event)
  const id = event.pathParameters.id;
  const product = products.find(p => p.id === id);
  return formatJSONResponse(product);
}).use(cors());
