const dotenv = require('dotenv');
dotenv.config();

const database = require('config').get('database');
const pkg = require('./package.json');

database.connection.application_name = `${pkg.name}-${process.env.NODE_ENV || development}`;
database.pool.afterCreate = (conn, done) => {
    conn.query(`SET ROLE ${database.role}`, (err) => {
        done(err, conn);
    });

};

module.exports = database;