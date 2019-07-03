const express = require("express")
const mysql = require("mysql")
const cors = require("cors")
const session = require("express-session")

var pool = mysql.createPool({
  host:"127.0.0.1",
  user:"root",
  password:"",
  port:3306,
  database:"xz",
  connectionLimit:15
})

var server = express()
server.use(cors({
  origin:["http://127.0.0.1:8080","http://localhost:8080"],
  credentials:true
}))

server.use(session({
  secret:"128位字符串",
  resave:true,
  saveUninitialized:true
}))

server.use("/",express.static("/public"))

server.listen(3000)

