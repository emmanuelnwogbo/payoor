"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;
require('dotenv').config();
var formData = require('form-data');
var Mailgun = require('mailgun.js');
var mailgun = new Mailgun(formData);
var API_KEY = process.env.MAILGUN_API_KEY;
var DOMAIN = 'sandboxec6d9305021541b4af59d91aad1ca34d.mailgun.org';
function send(emails) {
  var client = mailgun.client({
    username: 'api',
    key: API_KEY
  });
  var messageData = {
    from: 'Excited User <hello@sandboxec6d9305021541b4af5ƒ9d91aad1ca34d.mailgun.org>',
    to: 'nerdyemmanuel@gmail.com',
    subject: 'Hello',
    html: "<h1>Testing some Mailgun awesomeness!</h1>"
  };
  client.messages.create(DOMAIN, messageData).then(function (res) {
    console.log(res);
  })["catch"](function (err) {
    console.error(err);
  });
}
var _default = exports["default"] = send;