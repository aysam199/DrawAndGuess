const { Pool } = require("pg");
const url = require("url");
require("dotenv").config();

let DB_URL = process.env.DB_URL;

if (process.env.NODE_ENV === "test") {
    DB_URL = process.env.TEST_DB_URL;
}
if (!DB_URL) throw new Error("Enviroment variable DB_URL must be set");

const params = url.parse(DB_URL);

const [user, password] = params.auth.split(":");

const options = {
    host: params.hostname,
    port: params.port,
    database: params.pathname.split("/")[1],
    max: process.env.MAX_CONNECTIONS || 10,
    user,
    password,
    ssl: params.hostname !== "localhost"
};

module.exports = new Pool(options);