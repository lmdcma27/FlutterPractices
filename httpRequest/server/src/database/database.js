//user auth fot the mysql console
//CREATE USER '<username>'@'%' IDENTIFIED WITH mysql_native_password BY '<password>'; 
//GRANT ALL PRIVILEGES ON . TO '<username>'@'%'; 
// FLUSH PRIVILEGES;



const mysql = require('mysql');

const mysqlConnection = mysql.createConnection({
    host: 'localhost',
    user: 'mysqluser',
    password:'password',
    database:'company',
    port: 33060,
})

mysqlConnection.connect(function (error){
    if (error){
        console.log(error)
        return;
    }else{
        console.log('Database is connected');
    }

})

module.exports = mysqlConnection;