import express from 'express';

const waitlist = express();

waitlist.post('/waitlist', (req, res) => {
    const { firstname, lastname, email, phonenumber, state, city, selectedoptions } = req.body;

    console.log(firstname, lastname, email, phonenumber, state, city, selectedoptions)
});

export default waitlist;