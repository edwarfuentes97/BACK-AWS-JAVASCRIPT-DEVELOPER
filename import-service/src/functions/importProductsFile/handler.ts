import { middyfy } from "@libs/lambda";
import { S3 } from 'aws-sdk';
import type { APIGatewayProxyEvent } from "aws-lambda";
import {  formatJSONResponse } from "@libs/api-gateway";

const ImportProductsFile = async (event: APIGatewayProxyEvent) => {
  const s3 = new S3({ region: process.env.REGION });

  if (!event.queryStringParameters.name) {
    return {
      body: 'name its required'
    }
  }

  const params = {
    Bucket: process.env.BUCKET_NAME,
    Key: `uploaded/${event.queryStringParameters.name}`,
    Expires: 3600,
    ContentType: 'text/csv'
  };

  try {
    const url: string = await s3.getSignedUrl('putObject', params);

    return formatJSONResponse(url);
  } catch (error) {
    console.error('getSignedUrl failed', error);
    return {
      body: 'name its required'
    };
  }
}

export const importProductsFile = middyfy(ImportProductsFile);
