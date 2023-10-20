import express from 'express';

const waitlist = express();
import Emailer from '../functions';

waitlist.post('/waitlist', (req, res) => {
    const { firstname, lastname, email, phonenumber, state, city, selectedoptions } = req.body;

    console.log(firstname, lastname, email, phonenumber, state, city, selectedoptions)
});

export default waitlist;