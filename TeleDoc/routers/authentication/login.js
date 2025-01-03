const express = require('express')
const DB_auth = require('../../DB_codes/DB_auth')
const router = express.Router({ mergeParams: true })



router.get('/', async (req, res) => {
    if (req.session.isAuth) {
        res.redirect('/');
    }
    res.render('login', { message: 'Please provide info' })
})



router.post('/', async (req, res) => {
    if (req.session.isAuth) {
        res.redirect('/');
    }
    const { email, password } = req.body;
    const user = await DB_auth.getUserByEmail(email);
    const userExists = user.length == 0 ? false : true;
    if (!userExists) {
        console.log('ae');
        return res.render('login', { message: 'Error logging in' })
    }

    const passwordMatch = password == user[0].PASSWORD ? true: false;
    if (!passwordMatch) {
        console.log('ab');
        return res.render('login', { message: 'Error logging in' })

    }
    //var session = req.session;
    req.session.userid =user[0].USER_ID ;
    req.session.username=user[0].EMAIL;
    req.session.isAuth = true;
    console.log('as');
   
    res.redirect('/');
    //res.send('<h1> successful</h1>');
})

module.exports = router