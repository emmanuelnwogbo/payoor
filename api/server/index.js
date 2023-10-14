if (process.env.NODE_ENV !== 'production') {
    require("dotenv").config();
}

import "regenerator-runtime/runtime.js";
import express from "express";
import http from "http";
import bodyParser from 'body-parser';
import path from 'path';
import cors from 'cors';

import mongoose from 'mongoose';

const app = express();

app.use(express.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(cors());

const PORT = process.env.PORT || 8080;
const server = http.createServer(app);

mongoose.connect('mongodb://127.0.0.1:27017/payoor', {
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