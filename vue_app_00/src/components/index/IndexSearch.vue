<template>
  <div class="container">
    <van-nav-bar title="预约进店" left-text="" left-arrow @click-left="onClickLeft">
      <van-icon name="wap-home" slot="right" @click="onClickRight" />
      <van-icon name="bars" slot="right" />
    </van-nav-bar>
    <div>
      <ul class="left">
        <li  v-for="(item,i) of provice" :key="i" :data-id="item.id" @click="showads">{{item.provice}}<i v-show="true"></i></li>
      </ul>
    </div> 
    <div> 
      <ul class="right">
        <li v-for="(item,i) of lists" :key="i">
          <div>
            <h5><van-icon name="location-o" />当前选择：</h5>
            <h3>推荐店铺</h3>
            <div class="card">
              <div><img src="../../img/shopImg/01.jpg"></div>
              <div class="shopname">
                <span>{{lists[0].sname}}</span>
                <a href="#">立即预约</a>
              </div>
              <div class="address">
                <van-icon name="location-o" />
			{{lists[0].saddress}}
    </div>  
  </div>
</template>
<script>
  export default {
    data() {
      return {
        lists:[],
        provice:[],
        id:1
      }
    },
    created() {
    },
    methods: {
      onClickLeft(){
        this.$router.go(-1)
      },
      onClickRight(){
        this.$router.push('/main')
      },
      // getshoplist(){
      //   this.axios.get("index/search/"+this.id,{params:{id:this.id}}).then(result=>{
      //     console.log(result.data.provice)
      //     this.provice = result.data.provice
      //     this.lists = result.data.address
      //   })
      // },
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
  /*
  .trees{
    width:100%;
    display:flex;
    background:#fff;
  }
  .trees .left{
    width:25%;
    overflow:hidden;
  }
  .trees .left li{
    height:55px; 
    font-size: 15px;
    color:#222;
    text-align:center;
    line-height:55px;
    position:relative;
    border-bottom:1px solid #eee;
    border-right:1px solid #eee;
  }
  .trees .left i{
    position:absolute;
    width:6px;
    height:18px;
    background:#a57a68;
    border-radius:3px;
    top:18px;
    left:15px;
  }
  .trees .right{
    width:75%;
  }
  .trees .right h5{
    color:#a57a68;
    margin:20px 0 0 15px;
  }
  .trees .right h3{
    margin:17px 0 0 15px;
    color:#222;
    font-size:16px;
    font-weight:400;
  }
  .card{
    width:100%;
    padding:12px 15px;
    border-bottom:1px solid #ccc;
  }
  .card img{
    width:100%;
  }
  .shopname{
    margin-top:8px;
  }
  .shopname span{
    font-size:15px;
    color:#222;
  }
  .shopname a{
    float:right;
    padding:0 5px;
    border:1px solid #a57a68;
    border-radius:5px;
    font-size:12px;
    color:#a57a68;
  }
  .address{
    font-size:12px;
    line-height:18px;
    margin-top:5px;
    color:#888;
  }
  */
</style>