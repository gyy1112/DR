const express = require("express")
const mysql = require("mysql")
const cors = require("cors")
const session = require("express-session")

var pool = mysql.createPool({
  host:"127.0.0.1",
  user:"root",
  password:"",
  port:3306,
  database:"dr",
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

server.get('/index/search',(req,res)=>{
  console.log(111)
  var output = {
    provice:[],
    address:[]
  }
  var sql = `SELECT * FROM dr_provice`
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    output.provice = result
    var sql = `SELECT * FROM dr_shopaddress`
    pool.query(sql,(err,result)=>{
      if(err) throw err;
      output.address = result
      res.send(output)
    })
  })  
})
server.get('/main',(req,res)=>{
  var sql = `SELECT * FROM dr_carousel`
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    console.log(result)
    res.send(result)
  })
})
server.get('/star',(req,res)=>{
  var sql = `SELECT * FROM dr_starinfo`
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    console.log(result)
    res.send(result)
  })
})
server.get('/star/getcomments',(req,res)=>{
  var id = req.query.id
  var pageindex = req.query.pageindex
  var ps = 5
  var offset = (pageindex-1)*ps
  var sql = `SELECT * FROM dr_getcmts LIMIT ?,?`
  pool.query(sql,[offset,ps,id],(err,result)=>{
    if(err) throw err;
    console.log(result)
    res.send(result)
  })
})
server.get('/star/postcomment',(req,res)=>{
  var id = req.query.id
  var sql = `UPDATE SET user_name,add_time,content WHERE id = ?`
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err;
    console.log(result)
    res.send(result)
  })
})
server.get('/star/starinfo',(req,res)=>{
  var id = req.query.id
  var sql = `SELECT * FROM dr_stardetail WHERE id = ?`
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err;
    console.log(result)
    res.send(result)
  })
})
