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


function teacherattendence(req, res) {

    con.query(`SELECT * from teacher_courses tc join courses c join teacher t on (c.courseid = tc.courseid and t.teacherid = tc.teacherid) WHERE t.email = "${req.cookies.teacherData.email}";`, function (err, result, fields) {
        
        if (result[0])      res.render('teacherattendence.ejs', {result, url: req._parsedUrl.pathname})
        else                console.log("error")
    })

}

module.exports.teacherattendence = teacherattendence