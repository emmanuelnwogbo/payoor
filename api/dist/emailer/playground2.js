/*const formData = require('form-data');
const Mailgun = require('mailgun.js');
const mailgun = new Mailgun(formData);
const API_KEY = process.env.MAILGUN_API_KEY;
const DOMAIN = 'sandboxec6d9305021541b4af59d91aad1ca34d.mailgun.org';



function send(emails) {
    const client = mailgun.client({ username: 'api', key: API_KEY });

    const messageData = {
        from: 'Excited User <hello@sandboxec6d9305021541b4af5ƒ9d91aad1ca34d.mailgun.org>',
        to: 'nerdyemmanuel@gmail.com',
        subject: 'Hello',
        html: "<h1>Testing some Mailgun awesomeness!</h1>"
    };

    client.messages.create(DOMAIN, messageData)
        .then((res) => {
            console.log(res);
        })
        .catch((err) => {
            console.error(err);
        });

}

export default send;*/
"use strict";