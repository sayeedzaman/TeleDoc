const database = require('./database')

async function insertIntoAppointment(dname,phone,date){
    let sql =  `
    DECLARE
BEGIN
ADD_APPOINTMENT(:PHONE_NUMBER,:DOCTOR_NAME,:APPOINT_DATE) ;
END ;
`
return (await database.execute(sql, [dname,phone,date], database.options))
}

module.exports={
    insertIntoAppointment
}