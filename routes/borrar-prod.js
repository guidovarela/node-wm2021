var express = require('express');
var router = express.Router();
const sequelize = require('sequelize');
const db = require('../config/db');
const tablaProductos = require('../models/tablaProductos');

let title = "Alta de productos"
let year = new Date().getFullYear();

router.get('/', (req,res) => {
    res.redirect('index')
})

router.get('/:id', async (req,res) => {
    let paramURL = req.params.id
    let borrarProd = await tablaProductos.destroy({
        where:{
            id: paramURL
        }
    })

    let aviso = alert("El producto fue borrado");

    if(borrarProd){
        const listProd = await tablaProductos.findAll()
        const getListColumn = await tablaProductos.rawAttributes

        res.render('editarProd',{title,year,listProd, getListColumn,aviso})
    }
})

module.exports = router

