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

function adminremovestudent(req, res) {

    con.query(`delete from student_courses where cmsid = ${req.body.cmsid};`, function (err, result, fields) {
        
        if (err)    console.log("error")
        else        del_student()
    })

    function del_student() {
        con.query(`delete from student where cmsid = ${req.body.cmsid};`, function (err, result, fields) {
                
            if (err)    console.log("error1")
            else        adminstudentsdetails(req, res)
        })
    }
   
}

function adminstudentsdetails(req, res) {

    // let dis_id = req._parsedUrl.pathname.split("/")[3].split(":")[1]
    // console.log(dis_id)

    // let semester = req._parsedUrl.pathname.split("/")[5].split(":")[1]
    // console.log(semester)

    con.query(`select *, DATE_FORMAT(dateofbirth, "%M %d %Y") as date,  DATE_FORMAT(FROM_DAYS(DATEDIFF(now(), dateofbirth)), '%Y')+0 AS age from student s join disciplines d on (s.discipline = d.dis_id) where discipline = ${req._parsedUrl.pathname.split("/")[3].split(":")[1]} and semester = ${req._parsedUrl.pathname.split("/")[5].split(":")[1]};`, function (err, result, fields) {

        if (result[0])  res.render('adminstudentsdetails.ejs', {result, url: req._parsedUrl.pathname})
        else            res.render('adminstudentsdetails.ejs', {result: [{discipline: req.body.sub1}], url: req._parsedUrl.pathname})
        
    })
    
}

module.exports.adminstudentsdetails = adminstudentsdetails
module.exports.adminremovestudent = adminremovestudent