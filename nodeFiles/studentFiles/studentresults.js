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

function studentresults(req, res) {

    con.query(`select * from student_courses c join student s join courses crs on (c.cmsid = s.cmsid and crs.courseid = c.courseid) where s.email = "${req.cookies.userData.email}"`, function (err, result, fields) {

        if (result[0]) res.render('studentresults.ejs', { result })
        else res.render('studentresults.ejs', { result })
    })
}

function studentresultsdetails(req, res) {

    let assignmentsavg, quizesavg, finalsavg

    con.query(`select round(avg(omassignments),2) as avg_assignment, round(avg(omquizes),2) as avg_quiz, round(avg(omfinals),2) as avg_final from student_courses c join student s join courses crs on (c.cmsid = s.cmsid and crs.courseid = c.courseid) where crs.coursename = "${req.body.sub1}"`, function (err, result, fields) {
        if (result[0]) {
            assignmentsavg = result[0].avg_assignment
            quizesavg = result[0].avg_quiz
            finalsavg = result[0].avg_final
            next(result)
        }
        else
            console.log("error")
    })

    function next(result1) {

        con.query(`select * from student_courses c join student s join courses crs on (c.cmsid = s.cmsid and crs.courseid = c.courseid) where s.email = "${req.cookies.userData.email}" and crs.coursename = "${req.body.sub1}"`, function (err, result, fields) {

            if (result[0]) res.render('studentresultsdetails.ejs', { result, result1 })
            else console.log("error")
        })
    }

}

module.exports.studentresults = studentresults
module.exports.studentresultsdetails = studentresultsdetails
