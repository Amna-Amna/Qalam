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

function studentattendence(req, res) {

    con.query(`select * from student_courses c join student s join courses crs on (c.cmsid = s.cmsid and crs.courseid = c.courseid) where s.email = "${req.cookies.userData.email}"`, function (err, result, fields) {

        if (result[0]) res.render('studentattendence.ejs', { result })
        else res.render('studentattendence.ejs', { result })
    })
}

function studentattendencedetails(req, res) {

    con.query(`select *, round(classes_taken*100/classes_conducted, 2) as percentage from student_courses c join student s join courses crs on (c.cmsid = s.cmsid and crs.courseid = c.courseid) where s.email = "${req.cookies.userData.email}" and crs.coursename = "${req.body.sub1}";`, function (err, result, fields) {

        if (result[0]) res.render('studentattendencedetails.ejs', { result })
        else console.log("error")
    })
}

module.exports.studentattendence = studentattendence
module.exports.studentattendencedetails = studentattendencedetails