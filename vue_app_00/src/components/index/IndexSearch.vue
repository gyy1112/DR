<template>
  <div class="container">
    <van-nav-bar title="预约进店" left-text="" left-arrow @click-left="onClickLeft">
      <van-icon name="wap-home" slot="right" @click="onClickRight" />
      <van-icon name="bars" slot="right" />
    </van-nav-bar>
    <div class="menu-wrapper" ref="menuWrapper">
      <ul class="left">
        <li :class="{'current':currentIndex === index}" @click="selectMenu(index)" v-for="(item,index) in provice" :key="index">{{item.provice}}</li>
      </ul>
    </div>
    <div class="food-wrapper" ref="foodWrapper">
      <ul>
        <li class="food-list food-list-hook">
          <div class="tj">
          <h5><van-icon name="location-o" />当前选择：{{provice[currentIndex].provice}}</h5>
          <h3>推荐店铺</h3>
          </div>
          <ul class="right">
            <li v-for="(item,i) of shopstores" :key="i" class="food-item border-1px">
              <div>
                <div class="card">
                  <div><img :src="item.simg"></div>
                  <div class="shopname">
                    <span>{{item.sname}}</span>
                    <a href="#">立即预约</a>
                  </div>
                  <div class="address">
                    <van-icon name="location-o" />
                    {{item.saddress}}
                  </div>
                </div> 
              </div>     
            </li>
          </ul>  
        </li>
      </ul>
    </div>
  </div>
</template>
<script>
import BScroll from 'better-scroll';
  export default {
    data() {
      return {
        lists:[],
        provice:[{provice:'推荐'}],
        currentIndex:0,
        shopstores:[
          {simg:'http://127.0.0.1:8080/img/shopImg/01.jpg',sname:'广州-中信广场店',saddress:'广东省广州市天河区天河北路233号中信广场中天购物城商场134-135单元（林和西地铁站 D出口）'},
          {simg:'http://127.0.0.1:8080/img/shopImg/02.jpg',sname:'深圳-龙岗万科广场店',saddress:'广东省深圳市龙岗区龙翔大道7188号 万科广场 L1-22'},
          {simg:'http://127.0.0.1:8080/img/shopImg/03.jpg',sname:'南京-华采天地店',saddress:'南京市江东中路258号华采天地购物中心1F-03铺'}
        ],
      }
    },
    created() {
      this.getshoplist()
    },
    methods: {
      selectMenu(index){
        this.currentIndex = index
        this.axios.get('shopstore',{params:{id:this.currentIndex+1}}).then(result=>{
          console.log(result.data)
          this.shopstores = result.data
        })
      },
      _initScroll() {
        this.menuScroll = new BScroll(this.$refs.menuWrapper,{
          click:true   
        });
        this.foodsScroll = new BScroll(this.$refs.foodWrapper,{
          probeType : 3   
        });
      },
      onClickLeft(){
        this.$router.go(-1)
      },
      onClickRight(){
        this.$router.push('/main')
      },
      getshoplist(){
        this.axios.get("index/search").then(result=>{
          //console.log(result.data)
          this.provice = result.data.provice
          console.log(result.data)
          this.lists = result.data.address
          this.$nextTick(()=>{this._initScroll()})
        })
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
  .menu-wrapper{
    width:25%;
    overflow:hidden;
    height:623px;
    background:#fff;
    float:left;
  }
  .food-wrapper{
    width:75%;
    overflow:hidden;
    height:623px;
    background:#fff;
    float:right;
    padding-top:20px;
  }

  .right{
    padding-top:20px;
  }
  .menu-wrapper .left li{
    height:55px; 
    font-size: 15px;
    color:#222;
    text-align:center;
    line-height:55px;
    position:relative;
    border-bottom:1px solid #eee;
    border-right:1px solid #eee;
  }
  .food-wrapper h5{
    color:#a57a68;
    margin:20px 0 0 15px;
  }
  .food-wrapper h3{
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
  .menu-wrapper .left li.current{
    position: relative;
    z-index: 10;
    margin-top: -1px;
    background: #fff;
    font-weight: 700;
    color:#a57a68;
  }   
</style>