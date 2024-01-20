/*const AWS = require('aws-sdk');

const SES_CONFIG = {
    accessKeyId: process.env.AWS_ACCESS_KEY,
    secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY,
    region: process.env.AWS_SES_REGION
}

const AWS_SES = new AWS.SES(SES_CONFIG);

const sendEmail = async (recipientEmail, name) => {
    let params = {
        Source: 'hello@payoor.shop',
        Destination: {
            ToAddresses: [
                recipientEmail
            ]
        },
        ReplyToAddresses: [],
        Message: {
            Body: {
                Html: {
                    Charset: 'UTF-8',
                    Data: '<h1>Test this email for the time of now</h1>'
                },
                Text: {
                    Charset: 'UTF-8',
                    Data: '<h1>Test this email for the time of now</h1>'
                }
            },
            Subject: {
                Charset: 'UTF-8',
                Data: `<h1>Hello world ${name}</h1>`
            }
        }
    }

    try {
        const res = await AWS_SES.sendEmail(params).promise();
        console.log('Email has been sent!', res);
    } catch (error) {
        console.log(error)
    }
}

//sendEmail('sampelumibiz@gmail.com', "Samson");*/


