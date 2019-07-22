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
server.get('/shopcart/zonghe',(req,res)=>{
  var sql = `SELECT * FROM dr_ringproduct`
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result)
  })
})
server.get('/shopcart/renqi',(req,res)=>{
  var sql = `SELECT * FROM dr_ringproduct ORDER BY saleout DESC`
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result)
  })
})
server.get('/shopcart/xinpin',(req,res)=>{
  var sql = `SELECT * FROM dr_ringproduct ORDER BY onshelfttime DESC`
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result)
  })
})
server.get('/shopcart/jiage',(req,res)=>{
  var state = req.query.state
  if(state == 'ASC'){
    var sql = `SELECT * FROM dr_ringproduct ORDER BY price ASC`
  }else{
    var sql = `SELECT * FROM dr_ringproduct ORDER BY price DESC`
  }
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result)
  })
})
server.get('/shopcart/product',(req,res)=>{
  var id = req.query.id
  var sql = `SELECT * FROM dr_ringproductdetail WHERE id = ?`
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err;
    console.log(result)
    res.send(result)
  })
})
server.get('/shopcart/user',(req,res)=>{
  var id = req.query.id
  var sql = `SELECT * FROM dr_ringproduct WHERE id IN(?)`
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err;
    console.log(result)
    res.send(result)
  })
})
server.post('/login',(req,res)=>{
  var phone = req.body.phone
  var sms = req.body.sms
  var sql = `SELECT * FROM dr_user WHERE phone = ? AND sms = ?`
  pool.query(sql,[phone,sms],(err,result)=>{
    if(result.length>0){
      res.send('1')
    }else{
      var sql = `INSERT INTO dr_user(phone,sms) VALUES (?,?)`
      pool.query(sql,[phone,sms],(err,result)=>{
        res.send('0')
      })
    }
  })
})
server.get('/usercart',(req,res)=>{
  var phone = req.query.phone
  var sql = `SELECT * FROM dr_user Where phone = ?`
  pool.query(sql,[phone],(err,result)=>{
    var userid = result[0].id
    console.log(result[0].id)
    var sql = `SELECT * FROM dr_usercart Where userid = ?`
    pool.query(sql,[userid],(err,result)=>{
      res.send(result)
    })
  }) 
})
server.get('/insertshopcart',(req,res)=>{
  var car = JSON.parse(req.query.car)
  var phone = req.query.phone
  var sql = `SELECT id FROM dr_user WHERE phone = ?`
  pool.query(sql,[phone],(err,result)=>{
    var userid = result.id
    var sql = 'DELETE FROM dr_usercart'
    pool.query(sql,(err,result)=>{
      if(err) throw err;
      for(var i=0;i<car.length;i++){
        var productid = car[i].id
        var count = car[i].count
        var price = car[i].price
        var selected = car[i].selected
        console.log(productid,count,price,selected,user)
        var sql = `INSERT INTO dr_usercart(userid,productid,count,price,selected) VALUES (?,?,?,?,?)`
        pool.query(sql,[userid,productid,count,price,selected],(err,result)=>{
          if(err) throw err;
          console.log(result)
          res.send(result)
        })
      }
    })
  })
})
