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

    const teacherlogin = require('./nodeFiles/teacherFiles/teacherlogin.js')
    const teacherprofile = require('./nodeFiles/teacherFiles/teacherprofile.js')
    const teacherattendence = require('./nodeFiles/teacherFiles/teacherattendence.js')
    const teachermarkattendence = require('./nodeFiles/teacherFiles/teachermarkattendence.js')
    const teacherresults = require('./nodeFiles/teacherFiles/teacherresults.js')
    const teacherresultsupload = require('./nodeFiles/teacherFiles/teacherresultsupload.js')

    app.get('*/teacherlogin', teacherlogin.teacherloginget)
    app.post('*/teacherlogin', teacherlogin.teacherloginpost)
    app.post('*/teacherlogout', teacherlogin.teacherlogout)

    app.get('*/teacherprofile', teacherprofile.teacherprofile)

    app.get('*/teacherattendence', teacherattendence.teacherattendence)

    app.post('*/teachermarkattendence', teachermarkattendence.teachermarkattendence)
    app.post('*/uploadattendence', teachermarkattendence.teachermarkattendenceupload)

    app.get('*/teacherresults', teacherresults.teacherresults)

    app.post('*/teacherresultsupload', teacherresultsupload.teacherresultsupload)

    app.post('*/uploadresults', teacherresultsupload.uploadresults)

    app.listen(3003)
} 