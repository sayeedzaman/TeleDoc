const database = require('./database')


//GET SQL FUNCTIONS FOR ID AND PASSWORDS

async function getUserByEmail(email) {
    let sql = `
        SELECT *
        FROM USERS
        WHERE EMAIL = :EMAIL
    `
    return (await database.execute(sql, [email], database.options)).rows
}

async function insertAccountIntoDB(name,date_of_birth,phonenumber,gender,location,password,email) {
    let sql = `


    DECLARE
BEGIN
ADD_PATIENT(:NAME,:DATE_OF_BIRTH,:PHONE_NUMBER,:GENDER,:LOCATION,:PASSWORD,:EMAIL) ;
END ;
    `
    //console.log('done');

    return (await database.execute(sql, [name,date_of_birth,phonenumber,gender,location,password,email], database.options))
}
async function insertAccountIntoDrDB(name,email,qualification,depaertmentname,password) {
    let sql = `
    DECLARE
BEGIN
ADD_DOCTOR( :NAME, :EMAIL, :QUALIFICATION, :DEPARTMENT, :PASSWORD) ;
END ;

     `

    return (await database.execute(sql, [name,email,qualification,depaertmentname,password], database.options))
}


module.exports = {
    getUserByEmail
    ,insertAccountIntoDB
    ,insertAccountIntoDrDB
}