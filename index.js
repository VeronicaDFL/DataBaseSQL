

///connects to library
const mysql = require ('mysql2');
const connection = require ('./connection.js');
////connects to database
const db = mysql.createConnection(connection);


/////choose what you want from database
db.query("SELECT * FROM customer",(err, data) => { 

///if we're going to get an errore console the error
    if (err) {
    console.error(err);
    }
/////if you get data console the data
    console.table(data);
    
    
    db.end();
    
});