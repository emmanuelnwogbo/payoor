if (process.env.NODE_ENV !== 'production') {
    require("dotenv").config();
}

import "regenerator-runtime/runtime.js";
import express from "express";
import http from "http";
import bodyParser from 'body-parser';
import path from 'path';
import cors from 'cors';

import waitlistroute from './emailservice/routes/waitlist';

import bestsellerscontroller from './userhome/controllers/bestsellers';

import admin_products_controller from './administration/controllers/products';

import mongoose from 'mongoose';

const app = express();

const corsOptions = {
    origin: [
        'https://www.payoor.shop',
        'https://main--musical-gingersnap-001e99.netlify.app',
        'http://localhost:3000',
        'https://admin.payoor.shop'
    ],
    optionsSuccessStatus: 200,
};

app.use(cors(corsOptions));

app.use(express.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(cors());

app.use(waitlistroute);

app.use(bestsellerscontroller);

app.use(admin_products_controller);

const PORT = process.env.PORT || 8080;
const server = http.createServer(app);

mongoose.connect(process.env.DB, {
    useNewUrlParser: true,
    useUnifiedTopology: true
}).then(() => {
    console.log('connected to database');

    server.listen(PORT, async (error) => {
        if (error) {
            return error;
        }

        return console.log(`server started on port here now ${PORT}`);
    });
});