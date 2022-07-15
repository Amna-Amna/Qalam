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


function teacherprofile(req, res) {

    con.query(`SELECT *, DATE_FORMAT(dateofbirth, "%M %d %Y") as dateofbirth,  DATE_FORMAT(FROM_DAYS(DATEDIFF(now(), dateofbirth)), '%Y')+0 AS age FROM teacher WHERE email = "${req.cookies.teacherData.email}";`, function (err, result, fields) {
        
        if (result[0])      res.render('teacherprofile.ejs', {result})
        else                console.log("error")
    })

}

function teacherprofileupload_get(req, res) {

    res.render('teacherprofileupload.ejs', { message: ""})
}

function teacherprofileupload_post(req, res) {

    con.query(`UPDATE student SET profile = "${req.body.profilelink}" WHERE email = "${req.cookies.userData.email}"`, function (err, result, fields) {
        
        if (result)     res.render('teacherprofileupload.ejs', { message: "Profile Successfully Updated"})
        else            res.render('teacherprofileupload.ejs', { message: "Error"})
    })

}

module.exports.teacherprofile = teacherprofile
module.exports.teacherprofileupload_get = teacherprofileupload_get
module.exports.teacherprofileupload_post = teacherprofileupload_post