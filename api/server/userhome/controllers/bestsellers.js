import express from 'express';

import product from '../../models/product';

const bestsellers = express.Router();




const bestsellersArray = [
    {
        _id: '1',
        itemname: 'Delicious Pasta',
        description: 'Homemade pasta with a rich tomato sauce and fresh basil.',
        price: 29.99,
        category: 'Italian Cuisine',
        imageUrl: 'https://res.cloudinary.com/dqmgqhman/image/upload/c_thumb,w_200,g_face/v1705287086/photo-1692958211324-147c95a9878b_bjqhh0.avif',
    },
    {
        _id: '2',
        itemname: 'Gourmet Chocolate Treat',
        description: 'Handcrafted premium dark chocolate with assorted nuts and fruits.',
        price: 39.99,
        category: 'Artisanal Chocolates',
        imageUrl: 'https://res.cloudinary.com/dqmgqhman/image/upload/c_thumb,w_200,g_face/v1705287342/joseph-gonzalez-fdlZBWIP0aM-unsplash_qz3a8b.jpg',
    },
    {
        _id: '3',
        itemname: 'Organic Vegetable Basket',
        description: 'A selection of farm-fresh organic vegetables for a healthy meal.',
        price: 49.99,
        category: 'Farm-to-Table Produce',
        imageUrl: 'https://res.cloudinary.com/dqmgqhman/image/upload/c_thumb,w_200,g_face/v1705287272/nadine-primeau--ftWfohtjNw-unsplash_ena1aq.jpg',
    },
    {
        _id: '4',
        itemname: 'Spicy Hot Sauce Collection',
        description: 'A curated set of flavorful hot sauces from around the world.',
        price: 19.99,
        category: 'Global Spices',
        imageUrl: 'https://res.cloudinary.com/dqmgqhman/image/upload/c_thumb,w_200,g_face/v1705287078/dose-juice-ocnsb17U6FE-unsplash_qgaok8.jpg',
    },
    {
        _id: '5',
        itemname: 'Exotic Fruit Medley',
        description: 'A mix of exotic fruits, perfect for a refreshing tropical treat.',
        price: 59.99,
        category: 'Tropical Fruits',
        imageUrl: 'https://res.cloudinary.com/dqmgqhman/image/upload/c_thumb,w_200,g_face/v1705287079/lily-banse--YHSwy6uqvk-unsplash_gcorfa.jpg',
    },
    {
        _id: '6',
        itemname: 'Artisanal Cheese Platter',
        description: 'A selection of fine cheeses accompanied by gourmet crackers.',
        price: 79.99,
        category: 'Cheese Pairings',
        imageUrl: 'https://res.cloudinary.com/dqmgqhman/image/upload/c_thumb,w_200,g_face/v1705287072/engin-akyurt-h8utDXjJuDg-unsplash_yb1hcv.jpg',
    },
    {
        _id: '7',
        itemname: 'Luxury Coffee Blend',
        description: 'Premium coffee beans sourced from high-altitude plantations.',
        price: 89.99,
        category: 'Gourmet Coffee',
        imageUrl: 'https://res.cloudinary.com/dqmgqhman/image/upload/c_thumb,w_200,g_face/v1705287078/taylor-kiser-EvoIiaIVRzU-unsplash_bukhch.jpg',
    },
    {
        _id: '8',
        itemname: 'Rare Herbal Tea Collection',
        description: 'A collection of rare and aromatic herbal teas for a soothing experience.',
        price: 99.99,
        category: 'Herbal Infusions',
        imageUrl: 'https://res.cloudinary.com/dqmgqhman/image/upload/c_thumb,w_200,g_face/v1705287074/nadine-primeau--ftWfohtjNw-unsplash_1_nmmyqt.jpg',
    },
    {
        _id: '9',
        itemname: 'Artisan Bread Basket',
        description: 'Handcrafted artisanal bread varieties for the perfect meal accompaniment.',
        price: 69.99,
        category: 'Bakery Delights',
        imageUrl: 'https://res.cloudinary.com/dqmgqhman/image/upload/c_thumb,w_200,g_face/v1705287074/nadine-primeau--ftWfohtjNw-unsplash_1_nmmyqt.jpg',
    },
    {
        _id: '10',
        itemname: 'Premium Olive Oil Set',
        description: 'A set of premium extra virgin olive oils for culinary excellence.',
        price: 129.99,
        category: 'Gourmet Oils',
        imageUrl: 'https://res.cloudinary.com/dqmgqhman/image/upload/c_thumb,w_200,g_face/v1705287074/photo-1683543124235-400a2b31cc73_wjqngx.avif',
    },
    {
        _id: '11',
        itemname: 'Mouthwatering Sushi Platter',
        description: 'A delightful assortment of fresh sushi rolls for a sushi lover.',
        price: 25.99,
        category: 'Japanese Cuisine',
        imageUrl: 'https://res.cloudinary.com/dqmgqhman/image/upload/c_thumb,w_200,g_face/v1705287059/photo-1692958211304-9dd21cf7b510_pocyuv.avif',
    },
    {
        _id: '12',
        itemname: 'Crispy Gourmet Salad',
        description: 'A crunchy and flavorful gourmet salad with mixed greens and toppings.',
        price: 34.99,
        category: 'Salads & Greens',
        imageUrl: 'https://res.cloudinary.com/dqmgqhman/image/upload/c_thumb,w_200,g_face/v1705287073/photo-1692954838409-f0415fe14add_tirbez.avif',
    },
    {
        _id: '13',
        itemname: 'Homey Chicken Pot Pie',
        description: 'Classic comfort food with a flaky crust and savory chicken filling.',
        price: 45.99,
        category: 'Comfort Classics',
        imageUrl: 'https://res.cloudinary.com/dqmgqhman/image/upload/c_thumb,w_200,g_face/v1705287072/engin-akyurt-h8utDXjJuDg-unsplash_yb1hcv.jpg',
    },
    {
        _id: '14',
        itemname: 'Wholesome Smoothie Bowl',
        description: 'A nutritious and vibrant smoothie bowl with a variety of fresh fruits.',
        price: 15.99,
        category: 'Smoothie Bowls',
        imageUrl: 'https://res.cloudinary.com/dqmgqhman/image/upload/c_thumb,w_200,g_face/v1705287072/nadine-primeau-Juvw-a-RvvI-unsplash_ht3iub.jpg',
    },
    {
        _id: '15',
        itemname: 'Decadent Chocolate Fondue',
        description: 'Indulge in a decadent chocolate fondue experience with assorted dippables.',
        price: 55.99,
        category: 'Dessert Delights',
        imageUrl: 'https://res.cloudinary.com/dqmgqhman/image/upload/c_thumb,w_200,g_face/v1705287071/engin-akyurt-7fvhk53kEEA-unsplash_jy8xpy.jpg',
    },
    {
        _id: '16',
        itemname: 'Flavorful Taco Fiesta',
        description: 'A vibrant taco feast with a variety of fillings and toppings.',
        price: 74.99,
        category: 'Mexican Cuisine',
        imageUrl: 'https://res.cloudinary.com/dqmgqhman/image/upload/c_thumb,w_200,g_face/v1705287069/engin-akyurt-JYJBEw8yipk-unsplash_rjaici.jpg',
    },
    {
        _id: '17',
        itemname: 'Charming Cupcake Collection',
        description: 'An assortment of charming cupcakes with delightful flavors and decorations.',
        price: 84.99,
        category: 'Sweet Treats',
        imageUrl: 'https://res.cloudinary.com/dqmgqhman/image/upload/c_thumb,w_200,g_face/v1705287064/photo-1691657915691-7cf4cd48e376_mdmx76.avif',
    },
    {
        _id: '18',
        itemname: 'Savor the Moment Coffee Set',
        description: 'Experience a moment of bliss with a curated coffee set from around the world.',
        price: 94.99,
        category: 'Specialty Coffee',
        imageUrl: 'https://res.cloudinary.com/dqmgqhman/image/upload/c_thumb,w_200,g_face/v1705287065/photo-1683536904936-21ad226fce74_qjb8zi.avif',
    },
    {
        _id: '19',
        itemname: 'Artisanal Pizza Perfection',
        description: 'Enjoy artisanal pizza perfection with premium toppings and a crispy crust.',
        price: 64.99,
        category: 'Pizza Paradise',
        imageUrl: 'https://res.cloudinary.com/dqmgqhman/image/upload/c_thumb,w_200,g_face/v1705287063/photo-1675501342249-bdaaeb27c5cf_yxu7l2.avif',
    },
    {
        _id: '20',
        itemname: 'Sustainable Seafood Feast',
        description: 'Indulge in a sustainable seafood feast with the freshest catches of the day.',
        price: 109.99,
        category: 'Seafood Extravaganza',
        imageUrl: 'https://res.cloudinary.com/dqmgqhman/image/upload/c_thumb,w_200,g_face/v1705287060/photo-1692958208966-9e7bbf3cd12f_urgtmd.avif',
    },
];

bestsellers.get('/bestsellers/products', async (req, res) => {
    try {
        res.status(200).send({ items: bestsellersArray })
    } catch (error) {

    }
});

bestsellers.get('/products/notion', async (req, res) => {

});

export default bestsellers;