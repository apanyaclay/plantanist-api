// config/db.js
const mysql = require('mysql2');  // Gunakan mysql2 dengan dukungan async/await

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    database: 'plantanist',
    password: ''
})

db.connect((err) => {
    if (err) {
        console.error('Error connecting to the database:', err.message);
        return;
    }
    console.log('Connected to the MySQL database');
});

module.exports = db;
