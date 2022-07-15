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

async function removeTeachers(req, res) {

    await con.query(`delete from student_courses where teacherid = ${req.body.teacherid}`, function (err, teacher, fields) {
        
        if (err)    console.log("Error:1")

    })

    await con.query(`delete from teacher_courses where teacherid = ${req.body.teacherid}`, function (err, teacher, fields) {
       
        if (err)    console.log("Error:2")
        
    })

    await con.query(`delete from teacher where teacherid = ${req.body.teacherid}`, function (err, teacher, fields) {
        
        if (err)    console.log("Error:3")
        else        console.log(`removed ${req.body.teacherid}`)
    
    })

    allteachers(req, res)

}

function allteachers(req, res) {


    con.query(`select *, DATE_FORMAT(dateofbirth, "%M %d %Y") as date,  DATE_FORMAT(FROM_DAYS(DATEDIFF(now(), dateofbirth)), '%Y')+0 AS age from teacher;`, function (err, teacher, fields) {
        
        if (teacher[0])  res.render('adminallteachers.ejs', {teacher})
        else             res.render('adminallteachers.ejs', {teacher: 0})

    })

}

module.exports.allteachers = allteachers
module.exports.removeTeachers = removeTeachers