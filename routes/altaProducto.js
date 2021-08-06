const express = require('express')
const router = express.Router()
//MySQL
const sequelize = require('sequelize')
const db = require('../config/db')
const tablaProductos = require('../models/tablaProductos')

    let title = "Alta de productos"
    let year = new Date().getFullYear();

router.get('/',async function(request,response){

    //buscar categorias
    const getCategorias = await tablaProductos.findAll({
        attributes: ['categoria'],
        group: 'categoria'
    })
    console.log(getCategorias)

    response.render('form-altaProd.hbs',{title,year,getCategorias})
})

router.post('/', async (req,res) => {
    const newProd = {
        id:0,
        nombre: req.body.nombre,
        descripcion: req.body.descripcion,
        imagen: req.body.imagen,
        precio: req.body.precio,
        stock: req.body.stock,
        categoria: req.body.categoria,
    }
    console.log(newProd)
    //ojo el orden de los campos -> ver la tabla antes
    try {
        const cargarProd = await tablaProductos.create({
            id: newProd.id,
            nombre:newProd.nombre,
            descripcion:newProd.descripcion,
            precio:newProd.precio,
            imagen:newProd.imagen,
            stock:newProd.stock,
            categoria:newProd.categoria
        })    
        //console.log(cargarProd)
    
        res.render("form-altaProd.hbs",{title,year,alta:true})
        
    } catch (error) {
        console.log("Error en el alta "+error)
        res.render("form-altaProd.hbs",{data,year,alta:false,error})
    }
})

module.exports = router;