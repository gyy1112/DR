<template>
  <div>
    <van-nav-bar title="购物袋" left-text="" left-arrow @click-left="onClickLeft">
      <van-icon name="wap-home" slot="right" @click="onClickRight" />
      <van-icon name="bars" slot="right" />
    </van-nav-bar>
    <van-steps  :step="step"  active-color="#a57a68">
      <van-step>购物袋</van-step>
      <van-step>
           填写订单信息
           签署真爱协议
      </van-step>
      <van-step>付款完成购买</van-step>
    </van-steps>
    <div class="cart" v-show="ishide">
      <van-icon name="gem-o" />
      <p>您的购物袋内暂无商品</p>
      <router-link class="a1" to='my'>立即登录</router-link>
      <router-link to='shopcart/product' class="a2">先去逛逛</router-link>
    </div>
    <van-tabbar route  v-model="active">
      <van-tabbar-item replace to="/main" icon="wap-home" name='main'>首页
      </van-tabbar-item>
      <van-tabbar-item replace to="/star" icon="star-o" name='star'>明星
      </van-tabbar-item>
      <van-tabbar-item replace to="/doughnut" icon="like-o" name='daugthnut'>甜甜圈
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
      active:'shopcart',
      step: 0,
      ishide:true
    }
  },
  methods: {
    onClickLeft(){
      this.$router.go(-1)
    },
    onClickRight(){
      this.$router.push('/main')
    },
  },
}
</script>
<style scoped>
  .van-nav-bar{
    height:44px;
    line-height:44px;
  }
  .van-nav-bar__text{
    color:#231815;
    font-size:22px;
  }
  .van-nav-bar .van-icon-wap-home,.van-nav-bar .van-icon-bars{
    font-size:20px;
    color:#999;
  }
  .van-nav-bar .van-icon-wap-home{
    margin-right:10px;
  }
  .van-tree-select__nav-item{
    width:124px;
    height:55px;
    text-align:center;
    color:#222;
    font-size:15px;
    margin-right:0;
    line-height:55px;
  }
  /deep/ .van-step--horizontal:last-child .van-step__circle-container{
      right:25px;
  }
  /deep/ .van-step--horizontal:first-child .van-step__circle-container{
      left:8px;
  }
  /deep/ .van-step--finish .van-step__line{
      background:#a57a68;
  } 
  /deep/ .van-step--finish .van-step__circle{
      background:#ccc;
  } 
  .van-tabbar-item--active{
    color:#a57a68;
  }
  .cart{
    padding:120px 10px 0;
    text-align:center;
  }
  .van-icon-gem-o{
    font-size:70px;
    color:#ccc;
  }
  .cart p{
    font:15px 'yahei';
    color:#333;
    padding: 20px 0;
  }
  .cart .a1{
    display:block;
    margin:0 auto;
    width:156px;
    height:40px;
    border:1px solid #bf967c;
    color:#bf967c;
    line-height:40px;
    font-size:16px;
  }
  .cart .a2{
    font-size:16px;
    color:#bf967c;
    display:block;
    margin:40px auto 0;
    width:156px;
    height:40px;
  }
</style>