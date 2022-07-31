import { formatJSONResponse } from '@libs/api-gateway';
import { middyfy } from '@libs/lambda';
import { getSignedUrl } from "@aws-sdk/s3-request-presigner";
import { S3Client, PutObjectCommand } from "@aws-sdk/client-s3";

const GetSignedUrl = async (event) => {
  const s3Client = new S3Client({ region: 'us-east-1' });
  const BUCKET = 'import-service-dev-19971101';
  const catalogPath = 'uploaded/Sample-Bulk-Recipient.csv';

  const paramsPut = {
    Bucket: BUCKET,
    Key: catalogPath,
    Body: "BODY"
  }


  const command = new PutObjectCommand(paramsPut);

  const signedUrl = await getSignedUrl(s3Client, command, {
    expiresIn: 3600,
  });

  return formatJSONResponse({
    message: signedUrl ,
    event,
  });

};

export const importProductsFile = middyfy(GetSignedUrl);
