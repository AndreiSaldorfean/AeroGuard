const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const mongoose = require('mongoose');
const Location = require('./models/Location');
const jwt = require('jsonwebtoken');
const ApiKey = require('./models/ApiKeys');
const { Server } = require('socket.io');
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
        res.json(locations);
    }).catch(err => {
        console.log(err);
    });
});

app.route('/sensor/update').post(async (req, res) => {
    let tokenHeaderKey = process.env.TOKEN_HEADER_KEY;
    let jwtSecretKey = process.env.JWT_SECRET_KEY;

    try {
        const token = req.header(tokenHeaderKey);
        const verified = jwt.verify(token, jwtSecretKey);
        if (verified) {
            const locationData = req.body;
            var updatedData = [];
            var isNew = false;
            locationData.forEach(async location => {
                const { Id, Strada, Concentratie, Temperatura } = location;
                try {
                    if (await Location.exists({ id: Id })) {
                        var loc = await Location.findOne({ id: Id });
                        var arhivaDate = [{ concentratie: Concentratie, temperatura: Temperatura, createdAt: Date.now() }, ...loc.arhivaDate];
                        var loc = await Location.updateOne({ id: Id }, { id: Id, strada: Strada, concentratie: Concentratie, temperatura: Temperatura, arhivaDate: arhivaDate })
                    } else {
                        var fisrtArhivaDate = {
                            concentratie: Concentratie,
                            temperatura: Temperatura,
                            createdAt: Date.now()
                        }
                        var loc = await Location.create({ id: Id, strada: Strada, concentratie: Concentratie, temperatura: Temperatura, arhivaDate: [fisrtArhivaDate] });
                    }
                    if (isNew) {
                        updatedData.push({ id: Id, strada: Strada, concentratie: Concentratie, temperatura: Temperatura, arhivaDate: fisrtArhivaDate, updatedAt: Date.now() });
                    } else {
                        updatedData.push({ id: Id, strada: Strada, concentratie: Concentratie, temperatura: Temperatura, arhivaDate: arhivaDate, updatedAt: Date.now() });
                    }

                } catch (err) {
                    console.log(err);
                }
                socketIo.emit('updatedLocations', updatedData);
            });

        } else {
            // Access Denied 
            return res.status(401).send(error);
        }
    } catch (error) {
        return res.status(401).send(error);
    }
    return res.status(200).send("Successfully Updated");
});

app.route('/sensor/generatetoken').post(async (req, res) => {
    let jwtSecretKey = process.env.JWT_SECRET_KEY;
    let data = {
        time: Date(),
        userId: 12,
    }

    const token = jwt.sign(data, jwtSecretKey);
    if (await ApiKey.exists({ token: token })) {
        res.status(400).send('Token already exists');
        return;
    }
    await ApiKey.create({ token: token });
    res.send(token);
});

app.route('/sensor/validatetoken').get(async (req, res) => {
    let tokenHeaderKey = process.env.TOKEN_HEADER_KEY;
    let jwtSecretKey = process.env.JWT_SECRET_KEY;
    try {
        const token = req.header(tokenHeaderKey);

        const verified = jwt.verify(token, jwtSecretKey);
        if (verified) {
            return res.send("Successfully Verified");
        } else {
            // Access Denied 
            return res.status(401).send(error);
        }
    } catch (error) {
        // Access Denied 
        return res.status(401).send(error);
    }
})

const server = app.listen(process.env.PORT, () => {
    console.log('Server is running on port 4000');
});

const socketIo = new Server(server, {
    cors: {
        origin: '*', // Allow any origin for testing purposes. This should be changed on production.
    },
});

socketIo.on('connection', (socket) => {
    console.log('New connection created');
    socket.on('updatedLocations', (data) => {
        socket.broadcast.emit('updatedLocations', data);
    });

});