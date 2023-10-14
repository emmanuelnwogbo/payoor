"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;
var _express = _interopRequireDefault(require("express"));
function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }
var waitlist = (0, _express["default"])();
waitlist.post('/waitlist', function (req, res) {
  var _req$body = req.body,
    firstname = _req$body.firstname,
    lastname = _req$body.lastname,
    email = _req$body.email,
    phonenumber = _req$body.phonenumber,
    state = _req$body.state,
    city = _req$body.city,
    selectedoptions = _req$body.selectedoptions;
  console.log(firstname, lastname, email, phonenumber, state, city, selectedoptions);
});
var _default = exports["default"] = waitlist;