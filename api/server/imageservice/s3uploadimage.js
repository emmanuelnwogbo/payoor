import AWS from 'aws-sdk';
const { v4: uuidv4 } = require('uuid');

const s3bucket = new AWS.S3({
    accessKeyId: process.env.AWS_ACCESS_KEY_ID,
    secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY,
    region: process.env.AWS_REGION
});

const s3uploadimage = async (file) => {
    try {
        const fileKey = `products/${uuidv4()}-${file.originalname}`;
        const params = {
            Bucket: process.env.AWS_BUCKET_NAME,
            Key: fileKey,
            Body: file.buffer,
            ContentType: file.mimetype,
            ACL: 'public-read'
        };

        const data = await s3bucket.upload(params).promise();

        console.log(data);

        return data.Location;
    } catch (error) {
        console.error('Internal Server Error:', error);
    }
}

export default s3uploadimage;