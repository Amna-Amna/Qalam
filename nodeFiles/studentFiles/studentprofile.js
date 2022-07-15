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


function studentprofile(req, res) {

    con.query(`SELECT d.*, s.*, DATE_FORMAT(s.dateofbirth, "%M %d %Y") as date,  DATE_FORMAT(FROM_DAYS(DATEDIFF(now(), s.dateofbirth)), '%Y')+0 AS age FROM student s join disciplines d on (s.discipline = d.dis_id) WHERE s.email = "${req.cookies.userData.email}";`, function (err, result, fields) {
        
        if (result[0])      res.render('studentprofile.ejs', { name: result[0].name , email: result[0].email , id: result[0].cmsid , course: result[0].dis_name , password: result[0].password, semester: result[0].semester, gender: result[0].gender, address: result[0].address, phone: result[0].phone, dateofbirth: result[0].date, age: result[0].age})
        else                console.log("error")
    })

}

function studentprofileupload_get(req, res) {

    res.render('studentprofileupload.ejs', { message: ""})
}

function studentprofileupload_post(req, res) {

    con.query(`UPDATE student SET profile = "${req.body.profilelink}" WHERE email = "${req.cookies.userData.email}"`, function (err, result, fields) {
        
        if (result)     res.render('studentprofileupload.ejs', { message: "Profile Successfully Updated"})
        else            res.render('studentprofileupload.ejs', { message: "Error"})
    })

}

module.exports.studentprofile = studentprofile
module.exports.studentprofileupload_get = studentprofileupload_get
module.exports.studentprofileupload_post = studentprofileupload_post