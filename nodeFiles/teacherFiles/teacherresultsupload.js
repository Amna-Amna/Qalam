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

function teacherresultsupload(req, res) {

    let url = req._parsedUrl.pathname
    let position = url.search("/uploadattendence");

    if (position > 0) {
        
        let string = ""
        for (let i = 0; i < position; i++)      string += url[i]
        req._parsedUrl.pathname = string
    } 

    con.query(`SELECT s.*, sc.*, d.* from student_courses sc join student s join teacher t join disciplines d on (sc.cmsid = s.cmsid and sc.teacherid = t.teacherid and s.discipline = d.dis_id) where t.email = "${req.cookies.teacherData.email}" and sc.courseid = ${req.body.courseid};`, function (err, result, fields) {
        
        if (result[0])      res.render('teacherresultsupload.ejs', {result, url: req._parsedUrl.pathname})
        else                console.log("error")
    })
}

function uploadresults(req, res) {

    let url = req._parsedUrl.pathname
    let position = url.search("_");
    let courseid = url[position+1]

    for (const item of Object.entries(req.body)) {

        con.query(`update student_courses set omassignments = ${item[1][0]}, omquizes = ${item[1][1]}, omfinals = ${item[1][2]} where courseid = ${courseid} and cmsid = ${item[0]}`, function (err, result, fields) {
            if (err)    console.log(err)
        })
    }

    req.body.courseid = courseid

    teacherresultsupload(req, res)
}

module.exports.teacherresultsupload = teacherresultsupload
module.exports.uploadresults = uploadresults