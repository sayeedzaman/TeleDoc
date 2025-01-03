const { compile } = require('ejs');
const express = require('express')
const DB_auth = require('../../DB_codes/DB_appointment')
const router = express.Router({ mergeParams: true })


router.get('/', async (req, res) => {
    if (req.session.isAuth) {
        res.redirect('/');
    }
    res.render('appointment', { message: 'Enter Credentials' })
})




//user makes post request to register him into db
router.post('/', async (req, res) => {
    //console.log('aisi');
    const{dname,phone,date}=req.body;

    //insert user into db with password
    console.log(req.body);
    await DB_auth.insertIntoAppointment(dname,phone,date);
    //console.log('bair');
    res.redirect('/')
})

module.exports = router