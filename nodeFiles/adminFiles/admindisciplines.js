const express = require('express')
const app = express()
const mysql = require('mysql')

let cookieParser = require('cookie-parser');
    
let con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "password",
    database: "QalamDatabase"
});
    
app.set('view-engine', 'ejs')
app.use(express.static('public'))
app.use('/css', express.static(__dirname + 'public/css'))
app.use('/js', express.static(__dirname + 'public/js'))
app.use(express.urlencoded({ extended: false }))
app.use(cookieParser());

function admindisciplines(req, res) {

    con.query(`select * from disciplines;`, function (err, result, fields) {
        
        if (result[0])  res.render('admindisciplines.ejs', {result, url: req._parsedUrl.pathname})
        else            res.render('admindisciplines.ejs', {result: 0, url: req._parsedUrl.pathname})
    })
   
}

module.exports.admindisciplines = admindisciplines