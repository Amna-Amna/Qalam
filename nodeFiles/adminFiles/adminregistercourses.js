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


function getregistercourses(req, res) {

    res.render('adminregistercourses.ejs', { message: ""})

}


function postregistercourses(req, res) {


    con.query(`select * from student where cmsid = ${req.body.cmsid}`, function (err, result, fields) {
       
        if (result[0])  checkCourseExist()
        else            res.render('adminregistercourses.ejs', {message: "Error: No student with this id"})

    }) 

    function checkCourseExist() {

        con.query(`select * from courses where courseid = ${req.body.courseid}`, function (err, result, fields) {
            
            if (result[0])  checknotregistered()
            else            res.render('adminregistercourses.ejs', {message: "Error: No course with this id"})
            
        })
    }

    function checknotregistered() {

        con.query(`select * from student_courses where cmsid = ${req.body.cmsid} and courseid = ${req.body.courseid};`, function (err, result, fields) {
           
            if (result[0])  res.render('adminregistercourses.ejs', {message: "Error: The course has already been registered"})
            else            registercourse()
            
        })
    }

    function registercourse() {

        con.query(`select count(*), teacherid from student_courses where courseid = ${req.body.courseid} group by teacherid order by count(*);`, function (err, result, fields) {
            
            if (result[0])  ifteacherteaching(result[0].teacherid)
            else            ifteachernotteaching()
            
        }) 
    }

    function ifteacherteaching(teacher) {

        con.query(`insert into student_courses (cmsid, courseid, classes_taken, omassignments, omquizes, omfinals, teacherid) values(${req.body.cmsid}, ${req.body.courseid}, 0, 0, 0, 0, ${teacher});`, function (err, result, fields) {
           
            if (err)    res.render('adminregistercourses.ejs', {message: "Error: someting went wrong"})
            else        res.render('adminregistercourses.ejs', {message: "Successfully registered new course"})
            
        }) 
    }


    function ifteachernotteaching() {

        con.query(`select * from teacher_courses where courseid = ${req.body.courseid}`, function (err, result, fields) {
            
            if (result[0])  ifteacherexists(result[0].teacherid)
            else            res.render('adminregistercourses.ejs', {message: "Error: Please register a teacher for this course"})
            
        }) 
    }

    function ifteacherexists(teacher) {

        con.query(`insert into student_courses (cmsid, courseid, classes_taken, omassignments, omquizes, omfinals, teacherid) values(${req.body.cmsid}, ${req.body.courseid}, 0, 0, 0, 0, ${teacher});`, function (err, result, fields) {
           
            if (err)    res.render('adminregistercourses.ejs', {message: "Error: someting went wrong"})
            else        res.render('adminregistercourses.ejs', {message: "Successfully registered new course"})
            
        }) 
    }

}

module.exports.postregistercourses = postregistercourses
module.exports.getregistercourses = getregistercourses

