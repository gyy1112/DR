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
        <img :src='item.img' alt="">
      </mt-swipe-item>
    </mt-swipe>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      lunbotuList: []
    }
  },
  created() {
    this.getLunbotu();
  },
  methods: {
    getLunbotu() {
      this.axios.get("main").then(result => { 
        console.log(result.data[1].img)
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
    height:300px;
  }
  .lunbo{
    width:100%;
    height:344px;
    padding-top:44px;
  }
</style>