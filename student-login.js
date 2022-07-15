module.exports = function () {
    const express = require('express')
    const app = express()

    let cookieParser = require('cookie-parser');

    app.set('view-engine', 'ejs')
    app.use(express.static('public'))
    app.use('/css', express.static(__dirname + 'public/css'))
    app.use('/js', express.static(__dirname + 'public/js'))
    app.use(express.urlencoded({ extended: false }))
    app.use(cookieParser());

    const studentlogin = require('./nodeFiles/studentFiles/studentlogin.js')
    const studentprofile = require('./nodeFiles/studentFiles/studentprofile.js')
    const studentattendence = require('./nodeFiles/studentFiles/studentattendence.js')
    const studentresults = require('./nodeFiles/studentFiles/studentresults.js')
    const studentregistercourses = require('./nodeFiles/studentFiles/studentregistercourses.js')

    app.get('*/studentlogin', studentlogin.studentloginget)
    app.post('*/studentlogin', studentlogin.studentloginpost)
    app.post('*/logout', studentlogin.studentlogout)

    app.get('*/studentprofile', studentprofile.studentprofile)

    app.get('*/studentprofileupload', studentprofile.studentprofileupload_get)
    app.post('*/studentprofileupload', studentprofile.studentprofileupload_post)

    app.get('*/studentattendence', studentattendence.studentattendence)
    app.post('*/studentattendencedetails', studentattendence.studentattendencedetails)

    app.get('*/studentresults', studentresults.studentresults)
    app.post('*/studentresultsdetails', studentresults.studentresultsdetails)

    app.get('*/studentregistercourses', studentregistercourses.studentregistercourses)

    app.listen(3002)
} 