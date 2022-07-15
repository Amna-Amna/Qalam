const express = require('express')
const app = express()

const adminlogin = require('./admin-login.js')
const studentlogin = require('./student-login.js')
const teacherLogin = require('./teacher-login.js')

app.set('view-engine', 'ejs')
app.use(express.static('public'))
app.use('/css', express.static(__dirname + 'public/css'))

app.get('', (req, res) => {
  res.clearCookie("adminData")
  res.clearCookie("userData")
  res.clearCookie("teacherData")
  res.render('main.ejs')
})

adminlogin()
studentlogin()
teacherLogin()

app.listen(3000)  

