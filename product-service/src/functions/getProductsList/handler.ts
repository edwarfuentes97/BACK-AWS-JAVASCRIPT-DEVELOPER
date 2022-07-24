
import { middyfy } from '@libs/lambda';
import cors from '@middy/http-cors';
// @ts-ignore
import { default as products } from '../../shared/products.json';
import {formatJSONResponse} from "@libs/api-gateway";

const { Pool } = require('pg');

const pool = new Pool ({
  host: process.env.DATABASE_HOST,
  user: process.env.DATABASE_USERNAME,
  password: process.env.DATABASE_PASSWORD,
  database: process.env.DATABASE_NAME,
  port: parseInt(process.env.DATABASE_PORT),
  connectionTimeoutMillis: 10000
})


export const getProductsList = middyfy( async ()  => {
  pool.connect((err, client, release) => {
    if (err) {
      return console.error('Error acquiring client', err.stack)
    }
    client.query('SELECT * FROM products INNER JOIN stocks ON products.id = stocks.product_id'
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
