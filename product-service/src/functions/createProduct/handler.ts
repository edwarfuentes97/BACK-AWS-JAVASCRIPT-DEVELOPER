
import { middyfy } from '@libs/lambda';
import cors from '@middy/http-cors';
import {formatJSONResponse} from "@libs/api-gateway";
import { v4 as UUID } from 'uuid';
const { Pool } = require('pg');

const pool = new Pool ({
  host: process.env.DATABASE_HOST,
  user: process.env.DATABASE_USERNAME,
  password: process.env.DATABASE_PASSWORD,
  database: process.env.DATABASE_NAME,
  port: parseInt(process.env.DATABASE_PORT),
  connectionTimeoutMillis: 10000
})



export const createProduct = middyfy( async (event)  => {
  pool.connect((err, client, release) => {
    if (err) {
      return console.error('Error acquiring client', err.stack)
    }
    client.query('INSERT INTO products (id, title, description, price) VALUES($1, $2, $3, $4) RETURNING *',
      [UUID(), event.body.title, event.body.description, event.body.price]
      , (err, result) => {
        release()
        if (err) {
          return console.error('Error executing query', err.stack)
        }
        return formatJSONResponse(result);
      })
  })

}).use(cors());
