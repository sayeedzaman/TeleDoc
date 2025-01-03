const { compile } = require('ejs');
const express = require('express')
const DB_auth = require('../../DB_codes/DB_auth')
const router = express.Router({ mergeParams: true })


router.get('/', async (req, res) => {
    if (req.session.isAuth) {
        res.redirect('/');
    }
    res.render('drregister', { message: 'Enter Credentials' })
})




//user makes post request to register him into db
router.post('/', async (req, res) => {
    console.log('aisi');
    const{name,email,qualification,departmentname,password}=req.body;
    let userExists = (await DB_auth.getUserByEmail(req.body.email)).length == 0 ? false : true;
    console.log('eino o aisi');
    if (userExists) {
        return res.render('register', { message: 'User already exists' })
    }

    // if (!user||!password||!email) {
    //     return res.render('register', { message: 'Please provide all info' })
    //     compile.log('aino asi');

    // }

    //insert user into db with password
    console.log(req.body);
    await DB_auth.insertAccountIntoDrDB(name,email,qualification,departmentname,password);
    console.log('bair');
    res.redirect('/')
})

module.exports = router