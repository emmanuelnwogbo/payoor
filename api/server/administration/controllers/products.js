import express from 'express';
import multer from 'multer';


import Product from '../../models/product';

import s3uploadimage from '../../imageservice/s3uploadimage';

const products = express();

const storage = multer.memoryStorage();
const upload = multer({ storage: storage });

const productsarr = [
    {
        _id: "1",
        itemname: "Delicious Pasta",
        description: "Homemade pasta with a rich tomato sauce and fresh basil.",
        price: 29.99,
        category: "Italian Cuisine",
        stockQuantity: 4,
        imageUrl:
            "https://res.cloudinary.com/dqmgqhman/image/upload/c_thumb,w_200,g_face/v1705287086/photo-1692958211324-147c95a9878b_bjqhh0.avif",
        bestseller: true,
    },
]

products.get('/products/inventory/', async (req, res) => {
    try {
        const productslist = await Product.find();

        res.status(200).send({
            items: [...productslist]
        })
    } catch (error) {
        console.error('Internal Server Error:', error);

        res.status(500).send({ message: 'Internal Server Error', error: error.message });
    }
});

products.post('/product/inventory/create', async (req, res) => {
    try {
        const productWithSameName = await Product.findOne({ itemname: req.body.itemname });

        if (productWithSameName) {
            return res.status(409).send({ message: 'A product with the same name already exists.' });
        }

        const { itemname, description, price, category, stockQuantity, imageUrl, bestseller } = req.body;

        const productItem = new Product({ itemname, description, price, category, stockQuantity, imageUrl, bestseller });

        const savedProduct = await productItem.save();

        res.status(201).send({ item: savedProduct });

    } catch (error) {
        console.error('Internal Server Error:', error);

        res.status(500).send({ message: 'Internal Server Error', error: error.message });
    }
});

products.put('/product/inventory/update', async (req, res) => {
    try {
        const { productid, itemattribute } = req.query;

        const { value } = req.body;

        const updateBody = {};
        updateBody[itemattribute] = value;

        const productToUpdate = await Product.findByIdAndUpdate(productid, updateBody, {
            new: true,
            runValidators: true
        });

        if (!productToUpdate) {
            res.status(404).send({ message: 'No product found with the given ID' });
            return;
        }

        res.status(200).send({ item: productToUpdate });
    } catch (error) {
        console.error('Internal Server Error:', error);

        res.status(500).send({ message: 'Internal Server Error', error: error.message });
    }
});

products.post('/product/inventory/imageupload', upload.single('file'), async (req, res) => {
    try {
        const { productid } = req.query;
        const file = req.file;

        const imageUrl = await s3uploadimage(file);

        const productToUpdate = await Product.findByIdAndUpdate(productid, { imageUrl }, {
            new: true,
            runValidators: true
        });

        if (!productToUpdate) {
            res.status(404).send({ message: 'No product found with the given ID' });
            return;
        }

        res.status(200).send({ item: productToUpdate });
    } catch (error) {
        console.error('Internal Server Error:', error);

        res.status(500).send({ message: 'Internal Server Error', error: error.message });
    }
})

export default products;