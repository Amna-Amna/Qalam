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

function adminloginget(req, res) {

    res.render('adminlogin.ejs',{ errormessage: ""})
}

function adminloginpost(req, res) {

    if (req.cookies.adminData)  res.render('adminindex.ejs', {url: req._parsedUrl.pathname})
    else                        checkingEmail()

    function checkingEmail() {
        con.query(`SELECT * FROM admin WHERE email = "${req.body.email}"`, function (err, result, fields) {

            if (result[0])  checkingPassword(result[0].password)
            else            res.render('adminlogin.ejs',{ errormessage: "No user with that email" })
        })
    }

    function checkingPassword(password) {

        if (password === req.body.password)     loggingIn()
        else                                    res.render('adminlogin.ejs', { errormessage: "Wrong Password" })
    }

    function loggingIn() {

        res.cookie("adminData", { email: req.body.email, password: req.body.password });
        res.render('adminindex.ejs', {url: req._parsedUrl.pathname})
    }
   
}

function adminlogout(req, res) {

    res.clearCookie("adminData")
    res.redirect('/adminlogin')
}

module.exports.adminloginget = adminloginget
module.exports.adminloginpost = adminloginpost
module.exports.adminlogout = adminlogout