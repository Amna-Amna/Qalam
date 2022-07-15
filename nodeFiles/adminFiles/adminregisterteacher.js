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

function getadminregisterteacher(req, res) {

    res.render('adminregisterteacher.ejs', {message: ""})

}

function postadminregisterteacher(req, res) {

    con.query(`insert into teacher (name, email, password, profile, gender, phone, address, dateofbirth) values("${req.body.name}", "${req.body.email}", "${req.body.password}", null, "${req.body.gender}", "${req.body.phone}", "${req.body.address}", STR_TO_DATE('${req.body.dateofbirth}', '%Y-%m-%d'));`, function (err, result, fields) {
       
        if (err)  res.render('adminregisterstudent.ejs', {message: "Error"})
        else      res.render('adminregisterstudent.ejs', {message: "Successfully added new teacher"})   
        
    }) 

}

module.exports.postadminregisterteacher = postadminregisterteacher
module.exports.getadminregisterteacher = getadminregisterteacher