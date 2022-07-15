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

function getregisterstudent(req, res) {

    res.render('adminregisterstudent.ejs', {message: ""})

}

function postregisterstudent(req, res) {
    
    con.query(`select * from disciplines where dis_name = "${req.body.discipline}";`, function (err, result, fields) {
        
        if (result[0])  addstudent(result[0].dis_id)
        else            res.render('adminregisterstudent.ejs', {message: "Error: Wrong discipline name"})
        
    }) 

    function addstudent(dis_id) {
    
        con.query(`insert into student (name, email, password, discipline, semester, profile, gender, phone, address, dateofbirth) values("${req.body.name}", "${req.body.email}", "${req.body.password}", ${dis_id}, ${req.body.semester}, null, "${req.body.gender}", "${req.body.phone}", "${req.body.address}", STR_TO_DATE('${req.body.dateofbirth}', '%Y-%m-%d'));`, function (err, result, fields) {
             
            if (err)    {console.log("discipline " + dis_id); res.render('adminregisterstudent.ejs', {message: "Error"})}
            else        {console.log("discipline " + dis_id); res.render('adminregisterstudent.ejs', {message: "Successfully added new student"})}
            
        }) 
    }
 
}

module.exports.postregisterstudent = postregisterstudent
module.exports.getregisterstudent = getregisterstudent

