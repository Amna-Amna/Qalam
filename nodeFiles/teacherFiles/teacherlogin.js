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

function teacherloginget(req, res) {

    res.render('teacherlogin.ejs',{ errormessage: ""})
}

function teacherloginpost(req, res) {

    if (req.cookies.teacherData) { 

        con.query(`SELECT * FROM teacher WHERE email = "${req.cookies.teacherData.email}"`, function (err, result, fields) {
            if (result[0])  loggingIn(result)
            else            res.render('teacherlogin.ejs',{ errormessage: "No user with that email"})
        })

    } else                  checkingEmail()

    function checkingEmail() {
        con.query(`SELECT * FROM teacher WHERE email = "${req.body.email}"`, function (err, result, fields) {

            if (result[0])  checkingPassword(result)
            else            res.render('teacherlogin.ejs',{ errormessage: "No user with that email" })
        })
    }

    function checkingPassword(result) {

        if (result[0].password === req.body.password)     loggingIn(result)
        else                                    res.render('teacherlogin.ejs', { errormessage: "Wrong Password" })
    }

    function loggingIn(result) {
        
        if (!req.cookies.teacherData)       res.cookie("teacherData", { email: req.body.email, password: req.body.password });

        if (result[0].profile == null)      res.render('teacherindex.ejs', { profile: ((result[0].gender === "male") ? "https://www.w3schools.com/howto/img_avatar.png" : "https://www.w3schools.com/howto/img_avatar2.png"), result, url: req._parsedUrl.pathname})
        else                                res.render('teacherindex.ejs', { profile: result[0].profile, result, url: req._parsedUrl.pathname})

    }
   
}

function teacherlogout(req, res) {

    res.clearCookie("teacherData")
    res.redirect('/teacherlogin')
}

module.exports.teacherloginget = teacherloginget
module.exports.teacherloginpost = teacherloginpost
module.exports.teacherlogout = teacherlogout