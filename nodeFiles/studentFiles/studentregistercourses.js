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

function  studentregistercourses(req, res) {

    con.query(`select * from courses;`, function (err, result, fields) {
        
        if (result[0])  {res.render('studentregistercourses.ejs', {result}); console.log(result)}
        else            console.log("error")
    })
}

function  studentloginpost(req, res) {

 
   
}


module.exports. studentregistercourses =  studentregistercourses
module.exports. studentloginpost =  studentloginpost
