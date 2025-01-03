const express = require('express')
const router = express.Router({ mergeParams: true });
//const DB_homepage = require('../DB_codes/DB_homepage');
//const DB_user = require('../DB_codes/DB_user');

//!require all sub routers
const loginRouter = require('./authentication/login')
const registerRouter = require('./authentication/register')
const drregisterROuter =require('./authentication/drregister')
const logoutRouter = require('./authentication/logout')
const appointmentRouter = require('./authentication/appointment')

// const productRouter = require('./product/product')
// const productListRouter = require('./productlist/productlist')
// const searchResultsRouter = require('./searchresults/searchresults')

// const userRouter = require('./user/user')
// const cartRouter = require('./cart/cart')
// const adminRouter= require('./admin/admin')


//!HOME PAGE
router.get('/', async (req, res) => {
    //res.redirect('/login');
    const userid = req.session.userid;
    // const newlyReleased = await DB_homepage.getNewlyReleasedProduct();
    // const topProducts = await DB_homepage.getTopProducts();
    
    //const cart= await DB_user.getCart(userid);
    const data = {
        pageTitle: 'TDC',
        isAuth: req.session.isAuth,
        userid: req.session.userid,
        username: req.session.username,
       // cart: req.session.cart,
        message: 'This is the Home Page'

        // newlyReleased,
        // topProducts
        
        // recommendation
    }
    res.render('index', data)
})




//!set up sub routers
router.use('/login', loginRouter)

// router.use('/product', productRouter)
// router.use('/productlist', productListRouter)
router.use('/register', registerRouter)
router.use('/drregister',drregisterROuter)
router.use('/logout', logoutRouter)
router.use('/appointment',appointmentRouter)
router.use('/logut',loginRouter)
// router.use('/searchresults', searchResultsRouter)
// router.use('/user', userRouter)
// router.use('/cart',cartRouter)
// router.use('/admin', adminRouter);

//!ERRORS

router.get('*', (req, res) => {
    const data = {
        pageTitle: '404',
        isAuth: req.session.isAuth,
        userid: req.session.userid,
        username: req.session.username,
        //cart: req.session.cart,
        message: 'Requested page does not exist'
    }
    res.status(400).render('error', data)
})

router.get('/error', (req, res) => {

    const data = {
        pageTitle: '404',
        isAuth: req.session.isAuth,
        userid: req.session.userid,
        username: req.session.username,
        //cart: req.session.cart,
        message: 'Requested page does not exist'
    }
    res.status(400).render('error', data)
})



module.exports = router
