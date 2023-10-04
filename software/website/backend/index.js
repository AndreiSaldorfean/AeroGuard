const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const mongoose = require('mongoose');
const Location = require('./models/Location');
require('dotenv').config();


const app = express();

const uri = process.env.DB_URI;

mongoose.connect(uri);
const connection = mongoose.connection;

connection.once('open', () => {
    console.log("MongoDB database connection established successfully");
})

app.use(bodyParser.json());
app.use(cors());
app.use(bodyParser.urlencoded({ extended: true }));

app.route('/').get((req, res) => {
    const locations = Location.find().then(locations => {
        console.log(locations)
        res.json(locations);
    }).catch(err => {
        console.log(err);
    });
});

app.route('/sensor/update').post(async (req, res) => {
    const locationData = req.body;
    locationData.forEach(async location => {
        const { Id, Strada, Concentratie } = location;
        console.log(Id, Strada, Concentratie)
        try {
            var loc = await Location.create({ id: Id, strada: Strada, concentratie: Concentratie });
            console.log(loc);
        } catch (err) {
            console.log(err);
        }
    });
    res.status(200).send('OK');
});

app.listen(4000, () => {
    console.log('Server is running on port 4000');
});