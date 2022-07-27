
import { middyfy } from '@libs/lambda';
import cors from '@middy/http-cors';
import {formatJSONResponse} from "@libs/api-gateway";
import { v4 as UUID } from 'uuid';
import {HTTPError} from "@functions/getProductsById/handler";

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


export const createProduct = middyfy( async (event)  => {
  console.log(event.body)
  let body = JSON.parse(event.body)
  console.log('body2', body)
  if (!event.body) {
    throw new HTTPError(400, 'The data are not correctly sent ');
  }
  await client.connect();
  const result = await client.query(
    'INSERT INTO products (id, title, description, price) VALUES($1, $2, $3, $4) RETURNING *' , [
      UUID(), body.title, body.description, body.price
    ]);
  await client.clean();
  console.log(`body al final` , body)
  return formatJSONResponse(result.rows)
}).use(cors());
