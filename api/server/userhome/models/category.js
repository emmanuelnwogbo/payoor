const mongoose = require('mongoose');
const { Schema } = mongoose;

const categorySchema = new Schema({
    image: {
        type: String,
        required: true
    },
    name: {
        type: String,
        required: true
    }
});

const Category = mongoose.model('Category', categorySchema);

module.exports = Category;