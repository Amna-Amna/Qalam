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

    const adminallteachers = require('./nodeFiles/adminFiles/adminallteachers.js')
    const adminregistercourses = require('./nodeFiles/adminFiles/adminregistercourses.js')
    const adminregisterteacher = require('./nodeFiles/adminFiles/adminregisterteacher.js')
    const adminregisterstudent = require('./nodeFiles/adminFiles/adminregisterstudent.js')
    const admincoursesdetails = require('./nodeFiles/adminFiles/admincoursesdetails.js')
    const adminstudentsdetails = require('./nodeFiles/adminFiles/adminstudentsdetails.js')
    const admindisciplines = require('./nodeFiles/adminFiles/admindisciplines.js')
    const adminsemesters = require('./nodeFiles/adminFiles/adminsemesters.js')
    const adminlogin = require('./nodeFiles/adminFiles/adminlogin.js')

    app.get('*/adminlogin', adminlogin.adminloginget)
    app.post('*/adminlogin', adminlogin.adminloginpost)
    app.post('*/adminlogout', adminlogin.adminlogout)


    app.use(authenticator)

    function authenticator(req, res, next) {

        if (req.cookies.adminData) next()
        else res.render('adminlogin.ejs', { errormessage: "" })
    }

    app.get('*/adminallteachers', adminallteachers.allteachers)
    app.post('*/adminremoveteacher', adminallteachers.removeTeachers)

    app.get('*/adminregistercourses', adminregistercourses.getregistercourses)
    app.post('*/adminregistercourses', adminregistercourses.postregistercourses)

    app.get('*/adminregisterteacher', adminregisterteacher.getadminregisterteacher)
    app.post('*/registernewteacher', adminregisterteacher.postadminregisterteacher)

    app.get('*/adminregisterstudent', adminregisterstudent.getregisterstudent)
    app.post('*/registernewstudent', adminregisterstudent.postregisterstudent)

    app.post('*/admindropcourse', admincoursesdetails.admindropcourse)
    app.post('*/admincoursesdetails', admincoursesdetails.admincoursesdetails)

    app.post('*/adminstudentsdetails', adminstudentsdetails.adminstudentsdetails)
    app.post('*/adminremovestudent', adminstudentsdetails.adminremovestudent)

    app.get('*/admindisciplines', admindisciplines.admindisciplines)

    app.post('*/adminsemesters', adminsemesters.adminsemesters)

    app.listen(3001)
}