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

con.connect(function(err) {
    if (err) throw err;
    console.log("Connected!");
});
    
app.set('view-engine', 'ejs')
app.use(express.static('public'))
app.use('/css', express.static(__dirname + 'public/css'))
app.use('/js', express.static(__dirname + 'public/js'))
app.use(express.urlencoded({ extended: false }))
app.use(cookieParser());

function studentloginget(req, res) {

    res.render('studentlogin.ejs',{ errormessage: ""})
}

function  studentloginpost(req, res) {

    if (req.cookies.userData) { 

        con.query(`SELECT * FROM student WHERE email = "${req.cookies.userData.email}"`, function (err, result, fields) {
            if (result[0])  loggingIn(result)
            else            res.render('studentlogin.ejs',{ errormessage: "No user with that email"})
        })

    } else                  checkingEmail()

    function checkingEmail() {

        con.query(`SELECT * FROM student WHERE email = "${req.body.email}"`, function (err, result, fields) {
            
            if (result[0])  checkingPassword(result)
            else            res.render('studentlogin.ejs',{ errormessage: "No user with that email" })
        })
    }

    function checkingPassword(result) {

        if (result[0].password === req.body.password)     loggingIn(result)
        else                                              res.render('studentlogin.ejs', { errormessage: "Wrong Password" })
    }

    function loggingIn(result) { 

        if (!req.cookies.userData)  res.cookie("userData", { email: req.body.email, password: req.body.password });

        if (result[0].profile == null)      res.render('studentindex.ejs', { profile: ((result[0].gender === "male") ? "https://www.w3schools.com/howto/img_avatar.png" : "https://www.w3schools.com/howto/img_avatar2.png"), name: result[0].name, cmsid: result[0].cmsid, url: req._parsedUrl.pathname})
        else                                res.render('studentindex.ejs', { profile: result[0].profile, name: result[0].name, cmsid: result[0].cmsid, url: req._parsedUrl.pathname})
    }
   
}

function studentlogout(req, res) {

    res.clearCookie("userData")
    res.redirect('/studentlogin')
}

module.exports.studentloginget = studentloginget
module.exports. studentloginpost =  studentloginpost
module.exports.studentlogout = studentlogout
