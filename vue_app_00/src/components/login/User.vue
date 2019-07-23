<template>
  <div>
    <div class="users-container">
      <div class="user-top">
        <a><img src="../../../public/img/userImg/user.png" class="user-pic"></a>
        <div class="info">
          <div class="txt">
            Cqj9l5
            <img src="../../../public/img/userImg/1.png">
          </div>
          <a><img src="../../../public/img/userImg/2.png"></a>
        </div>
        <button @click="loginout">退出</button>
      </div>
      <div class="mycore-club"><img src="../../../public/img/userImg/3.png"></div>
      <div class="mycore-cm">
        <a>          
          <div>❤</div>
          <div>我的收藏</div>
        </a>
        <a>
          <div>❤</div>
          <div>我的积分</div>
        </a>
      </div>
      <div class="myorder">
        <div class="mycv_title">
          <span>我的订单</span>
          <a>查看全部 ></a>
        </div>
        <van-grid :border="false" :column-num="4">
          <van-grid-item>
            <van-image src="http://127.0.0.1:8080/img/userImg/4.png"/>
            <span>待付款</span>
          </van-grid-item>
          <van-grid-item>
            <van-image src="http://127.0.0.1:8080/img/userImg/5.png"/>
            <span>待发货</span>
          </van-grid-item>
          <van-grid-item>
            <van-image src="http://127.0.0.1:8080/img/userImg/6.png" />
            <span>待收货</span>
          </van-grid-item>
          <van-grid-item>
            <van-image src="http://127.0.0.1:8080/img/userImg/7.png" />
            <span>待提货</span>
          </van-grid-item>
        </van-grid>
      </div>
      <div class="line"></div>
      <div class="mycv_menu-wrap">
        <van-grid :border="false" :column-num="4">
          <van-grid-item v-for="(item,i) of imgslist" :key="i">
            <van-image :src="item.img"/>
            <span>{{item.title}}</span>
          </van-grid-item>
        </van-grid>  
      </div>
      <van-tabbar route v-model="active">
        <van-tabbar-item replace to="/main" icon="wap-home" name='main'>首页
        </van-tabbar-item>
        <van-tabbar-item replace to="/star" icon="star-o" name='star'>明星
        </van-tabbar-item>
        <van-tabbar-item replace to="/doughnut" icon="like-o" name='daugthnut'>甜甜圈
        </van-tabbar-item>
        <van-tabbar-item replace to="/shopcart" icon="shopping-cart-o" name="shopcart" :info="this.$store.getters.getAllCount">购物袋
        </van-tabbar-item>
        <van-tabbar-item replace to="/my" icon="manager" name="my">我的
        </van-tabbar-item>                                                                                  
      </van-tabbar>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      imgslist:[
        {img:'http://127.0.0.1:8080/img/userImg/8.png',title:'预约进店'},
        {img:'http://127.0.0.1:8080/img/userImg/9.png',title:'纪念日'},
        {img:'http://127.0.0.1:8080/img/userImg/10.png',title:'粉钻预购'},
        {img:'http://127.0.0.1:8080/img/userImg/11.png',title:'礼品商城'},
        {img:'http://127.0.0.1:8080/img/userImg/12.png',title:'卡包'},
        {img:'http://127.0.0.1:8080/img/userImg/13.png',title:'我的勋章'},
        {img:'http://127.0.0.1:8080/img/userImg/14.png',title:'资讯中心'},
        {img:'http://127.0.0.1:8080/img/userImg/15.png',title:'意见反馈'},
        {img:'http://127.0.0.1:8080/img/userImg/16.png',title:'客服'},
      ],
      active:'my'
    }
  },
  created() {
    this.getcart()
  },
  methods: {
    loginout(){
      localStorage.removeItem('phone')
      localStorage.removeItem('car')  
      this.$router.push({name:'my'})
      // for(var item of this.$store.car){
      //   item.count = 0
      // }
    },
    getcart(){
      var phone = localStorage.getItem('phone')
      this.axios.get('usercart',{params:{phone:phone}}).then(result=>{
        localStorage.setItem('car',JSON.stringify(result.data))
      })
    }
  },
}
</script>
<style scoped>
    .users-container{
    background-color:#fff;
  }
  .user-top{
    padding-top:24px;
    margin:0 10px;
  }
  .user-top .user-pic{
    width:62px;
    height:62px;
  }
  .user-top .info{
    display:inline-block;
    height:62px;
    vertical-align:top;
    padding-top:8px;
  }
  .user-top .info .txt{
    font-size:16px;
    color:#333;
    margin-left:10px;
  }
  .user-top .info .txt img{
    height:16px;
    vertical-align:middle;
  }
  .user-top .info a img{
    height:17px;
    margin:9px 0 0 10px;
  }
  .user-top button{
    background:#a57a68;
    color:#fff;
    font:12px 'yahei';
    margin:25px 0 0 8px;;
  }
  .mycore-club img{
    width:100%;
    display:block;
  }
  .mycore-cm{
    margin:0 15px;
    padding:0 15px 10px;
    border-bottom:1px solid #eee;
  }
  .mycore-cm a{
    display:inline-block;
    width:50%;
    padding-top:15px;
    text-align:center;
    font:14px 'yahei';
    color:#666;
  }
  .mycv_title{
    margin:0 15px;
    padding:12px 0;
  }
  .mycv_title span{
    color:#333;
    font:16px 'yahei';
    font-weight:700;
  }
  .mycv_title a{
    color:#999;
    font:12px 'yahei';
    float:right;
  }
  .van-image{
    width:26px;
    margin-bottom:5px;
  }
  .van-grid-item__content--center span{
    font:14px 'yahei';
    color:#333;
  }
  .mycv_menu-wrap{
    padding:15px;
    margin-top:10px;
  }
  .line{
    height:7px;
    background:#f4f4f4;
  }
</style>