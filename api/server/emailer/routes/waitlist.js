import express from 'express';

const waitlistroute = express();

import Waitlist from '../../models/waitlist';
import Emailer from '../functions';

waitlistroute.post('/waitlist', async (req, res) => {
    try {
        const { firstname, lastname, email, phonenumber, state, city, selectedoptions } = req.body;

        const waitlistitem = new Waitlist({
            firstname,
            lastname,
            email,
            phonenumber,
            state,
            city,
            selectedoptions
        });

        await waitlistitem.save();

        console.log(waitlistitem);
    } catch (error) {
        res.status(500)
    }
});

export default waitlistroute;