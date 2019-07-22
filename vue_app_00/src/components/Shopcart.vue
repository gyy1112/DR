<template>
  <div class="shopcar-container">
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
    <div class="cart" v-show="ishide == true">
      <van-icon name="gem-o" />
      <p>您的购物袋内暂无商品</p>
      <router-link class="a1" to='my'>立即登录</router-link>
      <router-link to='shopcart/product' class="a2">先去逛逛</router-link>
    </div>

    <div class="goods-list" v-show="!ishide">
      <!-- 商品列表项区域 -->
      <div class="mui-card" v-for="(item, i) in goodslist" :key="item.id">
				<div class="mui-card-content">
					<div class="mui-card-content-inner">
            <mt-switch v-model="$store.getters.getGoodsSelected[item.id]" @change="selectedChanged(item.id, $store.getters.getGoodsSelected[item.id])"></mt-switch>
            <img :src="item.img">
            <div class="info">
              <h1>{{ item.title }}</h1>
              <p>
                <span class="price">￥{{ item.price }}</span>
                <numbox :initcount="$store.getters.getGoodsCount[item.id]" :goodsid="item.id"></numbox>
                <a href="#" @click.prevent="remove(item.id, i)" class="delgood">删除</a>
              </p>
            </div>
					</div>
				</div>
			</div>
    </div>

    <!-- 结算区域 -->
    <div class="mui-card" v-show="!ishide">
				<div class="mui-card-content">
					<div class="mui-card-content-inner jiesuan">
						<div class="left">
              <p>总计（不含运费）</p>
              <p>已勾选商品 <span class="red">{{ $store.getters.getGoodsCountAndAmount.count }}</span> 件， 总价<br><span class="red">￥{{ $store.getters.getGoodsCountAndAmount.amount }}</span></p>
            </div>
             <mt-button type="danger">验证并购买</mt-button>
					</div>
				</div>
		</div>
    <van-tabbar route>
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
</template>
<script>
import numbox from "./subcomponents/shopcar_numbox.vue";
export default {
  data() {
    return {
      step: 0,
      ishide:true,
      goodslist: [],
    }
  },
  created() {
    this.getGoodsList()
  },
  beforeRouteLeave (to, from, next) {
    var phone = localStorage.getItem('phone')
    if(phone != null){
      if(from.name === 'shopcart'){
        var car = this.$store.state.car
        console.log(car[0])
        this.axios.get('insertshopcart',{params:{car:car,phone:phone}
        }).then(res=>{
          console.log(result)
        })
      }
      next()
    }
  },
  methods: {
    onClickLeft(){
      this.$router.go(-1)
    },
    onClickRight(){
      this.$router.push('/main')
    },
    getGoodsList() {
      let phone = localStorage.getItem('phone')
      if(phone == null){
        return;
      }else{
        this.ishide = !this
      }
      var idArr = [];
      this.$store.state.car.forEach(item => idArr.push(item.id));
      if (idArr.length <= 0) {
        this.$toast('购物车没有任何东西,请先逛逛')     
        this.$router.push({name:'shopcart-product'})
      }
      this.axios
        .get("shopcart/user",{params:{id:idArr}})
        .then(result => {
            this.goodslist = result.data;
          });
    },
    remove(id, index) {
      this.goodslist.splice(index, 1);
      this.$store.commit("removeFormCar", id);
    },
    selectedChanged(id, val) {
      this.$store.commit("updateGoodsSelected", { id, selected: val });
    }
  },
  components: {
    numbox
  }
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
  .shopcar-container {
    background-color: #eee;
    overflow: hidden;
  }  
  .shopcar-container .goods-list .mui-card-content-inner {
    display: flex;
    align-items: center;
  }
  .shopcar-container .goods-list img {
    width: 60px;
  }
  .shopcar-container .goods-list h1 {
    font-size: 13px;
  }
  .shopcar-container .goods-list .info {
    display: flex;
    flex-direction: column;
    justify-content: space-between;
  }      
  .shopcar-container .goods-list .info .price {
    color: red;
    font-weight: bold;
    margin-right:5px;
  }
  .delgood{
    margin-left:10px;
  }
  .mui-card-content-inner.jiesuan{
    padding-bottom:40px;
  }
  .shopcar-container .jiesuan {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }    
  .shopcar-container .red {
    color: red;
    font-weight: bold;
    font-size: 16px;
  }
</style>