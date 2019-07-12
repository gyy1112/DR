const express = require("express")
const mysql = require("mysql")
const cors = require("cors")
const bodyParser = require('body-parser')
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
server.use(bodyParser.urlencoded({
  extended:false
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
server.get('/shopstore',(req,res)=>{
  var id = req.query.id
  var sql = `SELECT * FROM dr_shopaddress WHERE spid = ?`
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err;
 //   console.log(result)
    res.send(result)
  })
})
server.get('/main',(req,res)=>{
  var sql = `SELECT * FROM dr_carousel`
  pool.query(sql,(err,result)=>{
    if(err) throw err;
   // console.log(result)
    res.send(result)
  })
})
server.get('/star',(req,res)=>{
  var sql = `SELECT * FROM dr_starinfo`
  pool.query(sql,(err,result)=>{
    if(err) throw err;
   // console.log(result)
    res.send(result)
  })
})
server.get('/star/getcomments',(req,res)=>{
  var id = req.query.id
  var pageindex = req.query.pageindex
  var ps = 5
  var offset = (pageindex-1)*ps
  var sql = `SELECT * FROM dr_getcmts WHERE id = ?  ORDER BY add_time DESC LIMIT ?,? `
  pool.query(sql,[id,offset,ps],(err,result)=>{
    if(err) throw err;
   // console.log(result)
    res.send(result)
  })
})
server.post('/star/postcomment',(req,res)=>{
  var id = req.body.id
  var user_name = req.body.user_name
  var add_time = req.body.add_time
  console.log(add_time)
  var content = req.body.content
  var sql = 'INSERT INTO dr_getcmts(id,user_name,add_time,content) VALUES (?,?,?,?)'
  pool.query(sql,[id,user_name,add_time,content],(err,result)=>{
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
 //   console.log(result)
    res.send(result)
  })
})
server.get('/doughnut/tuijian',(req,res)=>{
  var sql = `SELECT * FROM dr_doughnut ORDER BY dgtime DESC`
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    console.log(result)
    res.send(result)
  })
})
server.get('/doughnut/chengnuo',(req,res)=>{
  var sql = `SELECT * FROM dr_doughnut WHERE judge LIKE '%一生%' ORDER BY dgtime DESC `
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    console.log(result)
    res.send(result)
  })
})
server.get('/doughnut/yuehui',(req,res)=>{
  var sql = `SELECT * FROM dr_doughnut WHERE judge LIKE '%爱情%' ORDER BY dgtime DESC `
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    console.log(result)
    res.send(result)
  })
})
