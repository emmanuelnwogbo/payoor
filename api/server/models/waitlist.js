const mongoose = require('mongoose');
const { Schema } = mongoose;

const waitlistSchema = new Schema({
    firstname: {
        type: String,
        required: true
    },
    lastname: {
        type: String,
        required: true
    },
    email: {
        type: String,
        required: true,
        unique: true
    },
    phonenumber: {
        type: String,
        required: true
    },
    state: {
        type: String,
        required: true
    },
    city: {
        type: String,
        required: true
    },
    selectedoptions: {
        type: [String]
    }
});

const Waitlist = mongoose.model('Waitlist', waitlistSchema);

module.exports = Waitlist;