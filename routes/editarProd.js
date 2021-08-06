const express = require('express')
const router = express.Router()
//MySQL
const sequelize = require('sequelize')
const db = require('../config/db')
const tablaProductos = require('../models/tablaProductos')

let title = "Alta de productos"
let year = new Date().getFullYear();

router.get('/', async (req,res) => {

    const listProd = await tablaProductos.findAll()
    const getListColumn = await tablaProductos.rawAttributes
    //console.log(getListColumn)

    res.render('editarProd',{title,year,listProd, getListColumn})
})


module.exports = router