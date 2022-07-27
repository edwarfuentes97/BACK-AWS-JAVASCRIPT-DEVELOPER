
import { middyfy } from '@libs/lambda';
// @ts-ignore
import { default as products } from '../../shared/products.json';
import {formatJSONResponse} from "@libs/api-gateway";

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



export const getProductsList = middyfy( async ()  => {
  await client.connect();
  const result = await client.query(
    `SELECT * FROM products INNER JOIN stocks ON products.id = stocks.product_id`);
  await client.clean();
  return formatJSONResponse(result.rows)
});
