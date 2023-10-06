const mongoose = require('mongoose');

const Schema = mongoose.Schema;

const locationSchema = new Schema({
    id: { type: Number, required: true },
    strada: { type: String, required: true },
    concentratie: { type: Number, required: true },
    temperatura: { type: Number, required: true },
    arhivaDate: { type: Array, required: true },
}, { timestamps: true });

module.exports = mongoose.model('Location', locationSchema);