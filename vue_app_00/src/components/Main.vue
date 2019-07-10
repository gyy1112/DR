<template>
  <div>
    <div class="nav">
      <span class="left"><van-icon name="shop-o" />武汉市</span>
      <img src="../img/indexImg/logo2.png">
      <span class="right"><van-icon name="bars" /></span>
    </div>
    <div class="lunbo">
    <mt-swipe :auto="4000">
      <mt-swipe-item v-for="(item,i) of lunbotuList" :key="i">
        <img :src="item.img" alt="">
      </mt-swipe-item>
    </mt-swipe>
    </div>
    <ul>
      <li class="page1">
        <img src="../img/mainImg/11.jpg">
        <a href="javascript:;">真爱查询</a>
      </li>
      <li class="page2">
        <img src="../img/mainImg/08.jpg">
        <div class="p1">全球真爱体验店</div>
        <div class="p2">情侣首次预约到店领取限量精美礼品</div>
        <router-link to="/index/search">立即预约</router-link>
      </li>
      <li class="page3">
        <img src="../img/mainImg/09.jpg">
      </li>
      <li class="page4">
        <img src="../img/mainImg/03.jpg">
        <img src="../img/mainImg/02.jpg">
        <img src="../img/mainImg/01.jpg">
      </li>
      <li class="page5">
        <img src="../img/mainImg/07.jpg">
        <img src="../img/mainImg/05.jpg">
        <img src="../img/mainImg/06.jpg">
      </li>
      <li class="page6">
        <van-divider :style="{ color: '#222', borderColor: '#222', padding: '0 15px', fontSize: '17px' }">探索DR
        </van-divider>
        <img src="../img/mainImg/carousel1.jpg">
      </li>
      <li class="page7">
        <van-divider :style="{ color: '#222', borderColor: '#222', padding: '0 15px', fontSize: '17px' }">真爱明星
        </van-divider>
        <img src="../img/mainImg/04.jpg" class="img1">
        <img src="../img/mainImg/10.jpg">
        <a href="javascript:;" class="a1">DR粉丝故事</a>
        <a href="javascript:;" class="a2">DR活动专题</a>
        <div>已经到底了</div>
      </li>
    </ul>
    <van-tabbar route  v-model="active">
      <van-tabbar-item replace to="/main" icon="wap-home" name='main'>首页
      </van-tabbar-item>
      <van-tabbar-item replace to="/star" icon="star-o" name='star'>明星
      </van-tabbar-item>
      <van-tabbar-item replace to="/daugthnut" icon="like-o" name='daugthnut'>甜甜圈
      </van-tabbar-item>
      <van-tabbar-item replace to="/shopcart" icon="shopping-cart-o" name="shopcart">购物袋
      </van-tabbar-item>
      <van-tabbar-item replace to="/my" icon="manager" name="my">我的
      </van-tabbar-item>
    </van-tabbar>
  </div>
</template>
<script>
export default {
  data() {
    return {
      active:'main',
      lunbotuList: []
    }
  },
  created() {
    this.getLunbotu();
  },
  methods: {
    getLunbotu() {
      this.axios.get("main").then(result => { 
        console.log(result.data[0].img)
        this.lunbotuList = result.data
      });
    }
  },
}
</script>
<style >
  .nav{
    width:100%;
    height:44px;
    background-color:#fff;
    position:fixed;
    z-index:999;
  }
  .nav img{
    height:35px;
    margin-left:30%;
    margin-top:5px;
  }
  .nav .left{
    float:left;
    line-height:44px;
    font-size:12px;
    color:#9b745c;
    margin-left:4px;
  }
  .nav .left .van-icon{
    width:25px;
    height:27px;
    font-size:25px;
    vertical-align:middle;
    margin-right:4px;
  }
  .nav .right{
    float:right;
    font-size:25px;
    line-height:50px;
    color:#333;
    margin-right:5px;
  }
  .mint-swipe-items-wrap{
    height:300px;
  }
  .mint-swipe-items-wrap img{
    width:100%;
  }
  .lunbo{
    width:100%;
    height:344px;
    padding-top:44px;
  }
  .page1,.page2,.page4{
    width:96%;
    margin:2%;
    background:#fff;
    text-align:center;
    padding-bottom:20px;
  }
  .page1 img{
    padding-top:10%;
    width:40%;
  }
  .page2 img{
    width:100%;
  }
  .page1 a,.page2 a{
    display:block;
    height:30px;
    width:95px;
    line-height:30px;
    text-align:center;
    color:#a57a68;
    border:1px solid #a57a68;
    font-size:13px;
    margin: 10px 0 0px 36%;
  } 
  .page2 .p1{
    font-size:18px;
    color:#222;
    padding-top:15px;
    margin-bottom:13px;
  } 
  .page2 .p2{
    font-size:13px;
    color:#222;
  }
  .page3 img{
    width:100%;
  }
  .page4{
    padding-bottom:0;
    margin-top:-40px;
    display:flex;
  }
  .page4 img{
    width:33.3%;
  }
  .page5 img,.page6 img{
    width:100%;
    padding-bottom:10px;
  }
  .page6,.page7{
    width:96%;
    margin:2%;
  }
  .page7{
    padding-bottom:50px;
  }
  .page7 img{
    width:45%;
  }
  .page7 .img1{
    margin-right:8%;
  }
  .page7 a{
    font:14px 'yahei';
    color:#222;
  }
  .a1{
    margin-left:8%;
  }
  .a2{
    margin-left:38%;
  }
  .page7 div{
    width:100%;
    height:40px;
    color:#ccc;
    font:12px 'yahei';
    text-align:center;
    line-height:40px;
  }
</style>