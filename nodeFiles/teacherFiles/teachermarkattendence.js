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



function teachermarkattendence(req, res) {

    let url = req._parsedUrl.pathname
    let position = url.search("/uploadattendence");

    if (position > 0) {
        let string = ""
        for (let i = 0; i < position; i++)      string += url[i]
        req._parsedUrl.pathname = string
    } 

    con.query(`SELECT s.*, sc.*, d.* from student_courses sc join student s join teacher t join disciplines d on (sc.cmsid = s.cmsid and sc.teacherid = t.teacherid and s.discipline = d.dis_id) where t.email = "${req.cookies.teacherData.email}" and sc.courseid = ${req.body.courseid};`, function (err, result, fields) {
        if (result[0])      res.render('teachermarkattendence.ejs', {result, url: req._parsedUrl.pathname})
        else                console.log("error")
    })
}

function teachermarkattendenceupload(req, res) {

    let url = req._parsedUrl.pathname
    let position = url.search("_");
    let courseid = url[position+1]

    con.query(`update courses set classes_conducted = classes_conducted + 1 where courseid = ${courseid}`, function (err, result, fields) {
        if (err)    console.log(err)
    })

    for (const item of Object.entries(req.body)) {
        console.log(item[0] + " " + item[1])

        con.query(`update student_courses set classes_taken = classes_taken + 1 where courseid = ${courseid} and cmsid = ${item[0]}`, function (err, result, fields) {
            if (err)    console.log(err)
        })
    }

    req.body.courseid = courseid

    teachermarkattendence(req, res)
}

module.exports.teachermarkattendence = teachermarkattendence
module.exports.teachermarkattendenceupload = teachermarkattendenceupload