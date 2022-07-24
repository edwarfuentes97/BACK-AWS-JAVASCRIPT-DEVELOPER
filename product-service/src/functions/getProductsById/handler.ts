import { formatJSONResponse } from '@libs/api-gateway';
import { middyfy } from '@libs/lambda';
// @ts-ignore
import { default as products } from '../../shared/products.json';
import cors from '@middy/http-cors';
import {APIGatewayProxyEvent} from "aws-lambda";


const { Pool } = require('pg');

const pool = new Pool ({
  host: process.env.DATABASE_HOST,
  user: process.env.DATABASE_USERNAME,
  password: process.env.DATABASE_PASSWORD,
  database: process.env.DATABASE_NAME,
  port: parseInt(process.env.DATABASE_PORT),
  connectionTimeoutMillis: 10000
})

export const GetProductsById = middyfy( async (event:APIGatewayProxyEvent)=> {

  const id = event.pathParameters.id;
  if (!id) {
    throw new HTTPError(400, 'Product id is not correct');
  }
  pool.connect((err, client, release) => {
    if (err) {
      return console.error('Error acquiring client', err.stack)
    }
    client.query('SELECT * FROM products INNER JOIN stocks ON products.id = stocks.product_id WHERE id = $1', [id]
      , (err, result) => {
        release()
        if (err) {
          return console.error('Error executing query', err.stack)
        }
        console.log(result.rows)
        return formatJSONResponse(result.rows);
      })
  })
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
