const fs = require("fs");

const dbConnection = require("./db_connection");
const initQuery = fs.readFileSync(`${__dirname}/db_build.sql`).toString();

const runDbBuild = cb => dbConnection.query(initQuery, cb);

module.exports = runDbBuild;

