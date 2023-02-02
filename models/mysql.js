var connection = require("express-myconnection");
var mysql = require("mysql2");

//localhost phpmyadmin

var con = mysql.createConnection({
  // host: "mysql-79203-0.cloudclusters.net",
  // user: "admin",	// your MySQL username
  // database: "sdc",	// your database name
  // password: "tUyQpy2M",
  // port: "13084"
  //
  // host: "mysql-79687-0.cloudclusters.net",
  // port: 10631,
  // user: "admin",
  // password: "4YVX8LvM",
  // database: "sdc",
  
  
  host: "mysql-109107-0.cloudclusters.net",
  port: 10254,
  user: "admin",
  password: "ViXnzqkj",
  database: "sdc",

  // host: "localhost",
  // port: 3306,
  // user: "root",
  // password: "ballu12",
  // database: "sdc",

  // host: "localhost"`,
  // user: "root",	// your MySQL username
  // database: "sdc",	// your database name
  // password: ''	// your database password
  // password: ''	// your database password
  // password: ''	// your database password
  // password: ''	// your database password
});
con.connect(function (err) {
  if (err) {
    return console.log(err);
  }
  console.log("Connected");
});
module.exports = con;
