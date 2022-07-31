import { formatJSONResponse } from '@libs/api-gateway';
import { middyfy } from '@libs/lambda';
// @ts-ignore
import { default as products } from '../../shared/products.json';
import {APIGatewayProxyEvent} from "aws-lambda";
import cors from "@middy/http-cors";
const ServerlessClient = require('serverless-postgres')

const client = new ServerlessClient({
  user: process.env.DATABASE_USERNAME,
  host: process.env.DATABASE_HOST,
  database: process.env.DATABASE_NAME,
  password: process.env.DATABASE_PASSWORD,
  port: process.env.DATABASE_PORT,
  debug: true,
  delayMs: 3000,
});


export const GetProductsById = middyfy( async (event:APIGatewayProxyEvent)=> {
  const id = event.pathParameters.id;
  if (!id) {
    throw new HTTPError(400, 'Product id is not correct');
  }
  await client.connect();
  const result = await client.query(
    'SELECT * FROM products INNER JOIN stocks ON products.id = stocks.product_id WHERE id = $1' , [id]);
  await client.clean();
  return formatJSONResponse(result.rows)
}).use(cors());

export class HTTPError extends Error {
  statusCode: number;
  context?: string;

  constructor(statusCode: number, message: string, context?: string) {
    super(message);
    this.statusCode = statusCode;
    this.message = message;
    this.context = context;
  }
}
