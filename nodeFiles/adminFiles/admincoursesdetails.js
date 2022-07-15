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

function admindropcourse(req, res) {

    con.query(`delete from student_courses where cmsid = ${req.body.cmsid} and courseid = ${req.body.courseid};`, function (err, result, fields) {
        
        if(err) console.log("error")
        else    admincoursesdetails(req, res)
        
    })

}

function admincoursesdetails(req, res) {


    con.query(`select s.cmsid as cmsid, s.semester as semester, d.dis_id as dis_id, c.courseid as courseid, c.coursename as coursename, t.name as instructor from student s join student_courses sc join courses c join teacher t join disciplines d on (sc.cmsid = s.cmsid and c.courseid = sc.courseid and s.discipline = d.dis_id and sc.teacherid = t.teacherid) where s.cmsid = ${req.body.cmsid};`, function (err, result, fields) {
       
        if (result[0])  res.render('admincoursesdetails.ejs', {result})
        else            dis_sem()
    })

    function dis_sem() {
        con.query(`select d.dis_id as dis_id, s.semester from student s join disciplines d on s.discipline = d.dis_id where s.cmsid = ${req.body.cmsid};`, function (err, result, fields) {

            if (result[0])  res.render('admincoursesdetails.ejs', {result})
            else            console.log(error)
        })
    }

}

module.exports.admincoursesdetails = admincoursesdetails
module.exports.admindropcourse = admindropcourse