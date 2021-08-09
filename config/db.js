//Conexion MySQL
const Sequelize = require('sequelize')

/*conexion local -> wamp
let database = 'utn2021'
let userMYSQL = 'root'
let passMySQL = ''
let hostMySQL = '127.0.0.1'*/

const remote = {
  user: "bd9a8ea7d59e96",
  pass: "3c237954",
  host: "us-cdbr-east-04.cleardb.com",
  nameDB:"heroku_e52358cd71fcfab"
}

const db = new Sequelize(remote.nameDB, remote.user, remote.pass, {
  host: remote.host,
  dialect: 'mysql',
  define: {
        //desactivamos el timestamp, para que no envie fechas de actualizaciones a la db
        //https://sequelize.org/v5/manual/models-definition.html
        //https://sequelize.org/v5/manual/models-definition.html#configuration
        timestamps: false,
    }
})

module.exports = db;